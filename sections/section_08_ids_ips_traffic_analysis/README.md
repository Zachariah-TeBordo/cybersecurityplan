# Section 8 – IDS/IPS & Traffic Analysis

**What I built**  
I deployed Suricata on my Ubuntu Server VM as both an IDS and an inline IPS. I created a custom HTTP User-Agent rule and verified detection (IDS) and prevention (IPS via NFQUEUE + nftables) against controlled test traffic from Windows.  

**Key artifacts**  
- [docs/labsetup.md](docs/labsetup.md) – environment, methodology, evidence (screenshots)  
- [docs/commands.md](docs/commands.md) – exact commands I ran  
- [rules/local.rules](rules/local.rules) – my custom alert + drop rules  

**Highlights**  
- Suricata IDS: alerts on custom **BadBrowser** User-Agent to port 8080  
- Suricata IPS: nftables → NFQUEUE(0) → Suricata drop action blocked the request  
- Evidence captured and published (logs + screenshots)  
