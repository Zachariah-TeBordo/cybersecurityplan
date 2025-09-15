# Section 7 – Firewalls & ACLs

**Goal.** Apply ACL concepts with nftables: enforce least privilege, log denied traffic, and prove behavior from a Windows client.

**Highlights**
- Default-deny nftables ruleset with stateful rule placement.  
- Allowed: ICMP echo + TCP/80 from `10.10.7.10`.  
- Denied: TCP/22 (SSH) with log entries tagged `S7-DROP`.  

**Deliverables**
- [Lab Setup](docs/labsetup.md)  
- [Command Log](docs/command_log.md)  
- [Changelog](../../CHANGELOG.md)  
- [nftables.conf](docs/nftables.conf)  
- Screenshots: [host](screenshots/host/), [win10](screenshots/win10/), [ubuntu](screenshots/ubuntu/)  

**Results Summary**
- Ping and HTTP succeeded from Windows; SSH failed. Kernel logs captured the drops with `S7-DROP` prefix.  
