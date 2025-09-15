# Lab Setup – Section 7 (Firewalls & ACLs)

This document records exactly how the lab was built and verified. It is not a tutorial, but evidence of the work completed.

---

## Environment
- VirtualBox: each VM has 2 NICs  
  - Adapter 1 = NAT (for updates)  
  - Adapter 2 = Host-only (vboxnet0)  
- Windows 10 client: 10.10.7.10/24  
- Ubuntu Server target: 10.10.7.20/24  
- Test service: Python HTTP server on TCP/80  
- Firewall: nftables with default-deny, specific allows, explicit SSH drop, and logging  

---

## Steps and Evidence

### 1. VM Adapters Confirmed
- ![Win10 adapters](../screenshots/host/section7_vbox_win10_adapters.png)  


- ![Ubuntu adapters](../screenshots/host/section7_vbox_ubuntu_adapters.png)  

### 2. Static IPs Assigned
- ![Windows ipconfig](../screenshots/win10/section7_win10_ipconfig_after.png)  


- ![Ubuntu netplan file](../screenshots/ubuntu/section7_ubuntu_netplan_file.png)  


- ![Ubuntu ip a](../screenshots/ubuntu/section7_ubuntu_ip_addr.png)  

### 3. Baseline Connectivity
- ![Ping baseline](../screenshots/win10/section7_win10_ping_baseline.png)  

### 4. HTTP Service Started
- ![Ubuntu HTTP server running](../screenshots/ubuntu/section7_ubuntu_http_server_running.png)  


- ![Windows curl ok](../screenshots/win10/section7_win10_curl_ok.png)  

### 5. nftables Service Enabled
- ![Service status](../screenshots/ubuntu/section7_ubuntu_nft_service_enabled.png)  

### 6. Ruleset Applied
- ![nftables conf](../screenshots/ubuntu/section7_ubuntu_nft_conf_file.png)  


- ![Ruleset list](../screenshots/ubuntu/section7_ubuntu_nft_list_ruleset.png)  

### 7. ACL Behavior Validated
- ![Ping allowed](../screenshots/win10/section7_win10_ping_allowed.png)  


- ![HTTP allowed](../screenshots/win10/section7_win10_curl_headers_ok.png)  


- ![SSH blocked](../screenshots/win10/section7_win10_tnc_ssh_blocked.png)  


- ![Drops logged](../screenshots/ubuntu/section7_ubuntu_journal_logged_drop.png)  

### 8. Rule Order Demo
- ![Bad rule order](../screenshots/ubuntu/section7_ubuntu_bad_rule_order.png)  


- ![HTTP broken](../screenshots/win10/section7_win10_http_broken_due_to_state.png)  

### 9. Persistence Confirmed
- ![Service restart ok](../screenshots/ubuntu/section7_ubuntu_nft_persistent_status.png)  
