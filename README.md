# Cybersecurity Homelab Portfolio

## Introduction
This repository documents my journey from beginner to advanced in cybersecurity.
Every section contains a lab setup, study notes, a command log, and proof screenshots.
All work is performed on a Lenovo IdeaPad 1 with 12 GB RAM using Oracle VirtualBox.

## Hardware & Environment
- Host Machine: Lenovo IdeaPad1 (Windows OS, 12 GB RAM)
- Virtualization: Oracle VirtualBox
- VM Networking: NAT + Host-Only
- VMs Used: Windows 10, Ubuntu Server LTS

## Sections
1. [Section 1 - Homelab Setup](sections/section_1_homelab_setup/README.md)
	- Installed Oracle VirtualBox on host machine
	- Created and configured Windows 10 and Ubuntu Server VMs
	- Set up NAT + Host-Only networking

2. [Section 2 - Linux Fundamentals for Security Pros](sections/section_2_linux_fundamentals_for_security_pros)
	- Added a dedicated analyst user to follow least-privilege
	- Set and verified file permissions for access control.
	- Reviewed authentication and system logs for security monitoring.

3. [Section 3 - Windows Internals for Security Pros](sections/section_3_windows_internals/README.md)
	- Learned how Windows records logon activity and surfaces failed logons.
	- Enabled auditing, generated failed logons, and filtered logs for Event ID 4625.

4. [Section 4 - Command Line Power](sections/section_4_command_line_power/README.md)
	- Wrote Bash & Powershell scripts to scan log files for ERROR/WARN.
	- Learned text vs object pipelines, tested with sample logs, and linted Bash.