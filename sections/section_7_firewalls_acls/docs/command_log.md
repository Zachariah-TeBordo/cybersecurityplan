# Command Log – Section 7

## Ubuntu
apt-get update && apt-get install -y python3 nftables
ip -br a
nano /etc/netplan/99-hostonly.yaml
netplan apply
ip a show enp0s8
python3 -m http.server 80
systemctl enable --now nftables
nano /etc/nftables.conf
nft -f /etc/nftables.conf
nft list ruleset
journalctl -k | tail -n 30
journalctl -k | grep S7-DROP | tail -n 30
systemctl restart nftables
systemctl status nftables

## Windows (PowerShell)
ipconfig
ping 10.10.7.20
curl http://10.10.7.20/
curl -I http://10.10.7.20/
Test-NetConnection 10.10.7.20 -Port 22
