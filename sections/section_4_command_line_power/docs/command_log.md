# Section 4 – Command Log

This file records the key commands I ran while working through Section 4.

## Ubuntu
- mkdir -p ~/logs  
- vim ~/logs/app1.log  
- vim ~/logs/app2.log  
- ls ~/logs  
- mkdir -p ~/cybersecurityplan/sections/section_4_command_line_power/docs  
- vim ~/cybersecurityplan/sections/section_4_command_line_power/docs/find_errors.sh  
- chmod +x ~/cybersecurityplan/sections/section_4_command_line_power/docs/find_errors.sh  
- ~/cybersecurityplan/sections/section_4_command_line_power/docs/find_errors.sh ~/logs  
- sudo apt-get install -y shellcheck  
- shellcheck ~/cybersecurityplan/sections/section_4_command_line_power/docs/find_errors.sh  

## Windows
- New-Item -ItemType Directory -Force -Path C:\Logs  
- notepad C:\Logs\app1.log  
- notepad C:\Logs\app2.log  
- dir C:\Logs  
- notepad C:\Users\<YourName>\cybersecurityplan\sections\section_4_command_line_power\docs\Find-Errors.ps1  
- Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass  
- .\sections\section_4_command_line_power\docs\Find-Errors.ps1 -LogDir C:\Logs  
