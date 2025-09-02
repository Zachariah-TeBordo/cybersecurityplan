# Changelog

## Section 1 - Homelab Setup - 2025-08-14

- Installed Oracle VirtualBox on host machine.
- Downloaded Windows 10 Pro and Ubuntu Server LTS ISO images.
- Created Windows 10 VM (4 GB RAM, 2 cores, 50 GB storage).
- Created Ubuntu Server VM (2 GB RAM, 2 cores, 25 GB storage).
- Configured NAT + Host-Only networking for both VMs.
- Installed Windows 10 and Ubuntu Server LTS successfully.
- Documented lab setup with inline proof screenshots.

### Notes
- All networking standardized to NAT + Host-Only for future sections.
- Screenshot structure finalized: 'screenshots/<machine>/...'
- Repository documentation structure established.

## Section 2 - Linux Fundamentals for Security Pros - 2025-08-17

### Added 
	- Section 2 Lab Setup
	- Section 2 Command Log
	- Section 2 Screen Shots

### Documented
	- Study Notes
	- Lab Setup

## Section 3 - Windows Internals for Security Pros
- Created Section 3 folder and initial README.
- Added lab review for enabling auditing, generating failed logons, and filtering Event Viewer logs.
- Captured and uploaded screenshots for:
	- Auditing configuration
	- Filter dialog for Event ID 4625
	- Filtered results list
	- Event 4625 details (General, Friendly View, XML)
- Updated changelog and Readme

## Section 4 – Command Line Power (2025-08-22)
- Created test log files on Ubuntu and Windows for consistent cross-platform validation.  
- Developed Bash script (`find_errors.sh`) and PowerShell script (`Find-Errors.ps1`) to scan logs for ERROR/WARN.  
- Linted Bash script with ShellCheck and confirmed best practices.  
- Recorded work in `labsetup.md`, detailed command log, and structured screenshots into GitHub.  
