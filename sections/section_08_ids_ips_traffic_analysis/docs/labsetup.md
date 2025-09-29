# Lab Setup & Evidence – Section 8

## Environment
- Host: Windows 10 (VirtualBox)
- VMs: Ubuntu Server (Suricata IDS/IPS), Windows 10 client
- Networking: VirtualBox NAT + Host-only (Ubuntu monitored Host-only NIC)

## Topology
Windows (client) ──Host-only──> Ubuntu (Suricata IDS/IPS, HTTP :8080)

## Configuration Notes
- Suricata run modes:
  - IDS: `suricata -i <hostonly_nic> -c /etc/suricata/suricata.yaml -D`
  - IPS: `suricata -q 0 -c /etc/suricata/suricata.yaml -D` with nftables → NFQUEUE(0)
- nftables (inline filtering for IPS):
  - Table: `inet suri`
  - Chain: `input` (hook input, priority 0)
  - Rule: queue new TCP connections to dport 8080 on the Host-only NIC

## Custom Rules (local)
- **Alert** on HTTP User-Agent "BadBrowser" to :8080
- **Drop** same signature in IPS mode

See: [../rules/local.rules](../rules/local.rules)

## Evidence (screenshots)
- Ubuntu NIC and IP: [../screenshots/ubuntu/08_ip_addr.png](../screenshots/ubuntu/08_ip_addr.png)  
- Win10 IP config: [../screenshots/win10/08_ipconfig.png](../screenshots/win10/08_ipconfig.png)  
- Suricata installed: [../screenshots/ubuntu/08_suricata_installed.png](../screenshots/ubuntu/08_suricata_installed.png)  
- Service stopped: [../screenshots/ubuntu/08_suricata_service_stopped.png](../screenshots/ubuntu/08_suricata_service_stopped.png)  
- Config test OK: [../screenshots/ubuntu/08_suricata_test_ok.png](../screenshots/ubuntu/08_suricata_test_ok.png)  
- IDS alert in fast.log: [../screenshots/ubuntu/08_ids_fastlog_alert.png](../screenshots/ubuntu/08_ids_fastlog_alert.png)  
- IDS alert in eve.json: [../screenshots/ubuntu/08_ids_evejson_alert.png](../screenshots/ubuntu/08_ids_evejson_alert.png)  
- PCAP written: [../screenshots/ubuntu/08_tcpdump_written.png](../screenshots/ubuntu/08_tcpdump_written.png)  
- IPS curl blocked (Win10): [../screenshots/win10/08_ips_curl_blocked.png](../screenshots/win10/08_ips_curl_blocked.png)  

*(Note: No screenshot for Step 8 eve.json and Step 9 alert counts, per requirements.)*

## Result
- **Detected** the custom signature in IDS mode  
- **Blocked** the same traffic in IPS mode using NFQUEUE  
