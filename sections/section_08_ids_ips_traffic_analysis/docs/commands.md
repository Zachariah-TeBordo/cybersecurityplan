# Ubuntu – discovery
ip addr

# Install tools
sudo apt update
sudo apt install -y suricata jq tcpdump python3

# Stop/disable default service
sudo systemctl stop suricata
sudo systemctl disable suricata

# Tiny web server
mkdir -p ~/webroot && cd ~/webroot
echo "hello from ubuntu" > index.html
python3 -m http.server 8080 --bind 0.0.0.0

# Local Suricata rules
sudo vim /etc/suricata/rules/local.rules
# (paste rules from rules/local.rules)

# Ensure local.rules is loaded
sudo vim /etc/suricata/suricata.yaml
# rule-files: [ "local.rules" ]

# Validate config
sudo suricata -T -c /etc/suricata/suricata.yaml

# IDS mode
sudo suricata -i enp0s8 -c /etc/suricata/suricata.yaml -D
sudo tail -f /var/log/suricata/fast.log
sudo jq 'select(.event_type=="alert") | .alert' /var/log/suricata/eve.json | tail -n 3

# Client (Win10 / PowerShell)
curl http://<UBUNTU_HOSTONLY_IP>:8080/
curl -A BadBrowser http://<UBUNTU_HOSTONLY_IP>:8080/

# Capture evidence
WIN=<WIN10_HOSTONLY_IP>
sudo tcpdump -i enp0s8 host $WIN and tcp port 8080 -w ~/section08_test.pcapng

# IPS – nftables + NFQUEUE
sudo nft add table inet suri
sudo nft 'add chain inet suri input { type filter hook input priority 0 ; }'
sudo nft 'add rule inet suri input iif "enp0s8" tcp dport 8080 ct state new queue num 0'

# IPS mode Suricata
sudo pkill -f suricata || true
sudo suricata -q 0 -c /etc/suricata/suricata.yaml -D
sudo jq 'select(.event_type=="alert") | {action:.alert.action,signature:.alert.signature,severity:.alert.severity}' /var/log/suricata/eve.json | tail -n 5

# Client (Win10) – blocked check
curl -A BadBrowser http://<UBUNTU_HOSTONLY_IP>:8080/ -v

# Optional cleanup
sudo pkill -f suricata
sudo nft flush table inet suri
