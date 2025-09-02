# Section 4 - Command Line Power (Bash and Powershell)

## Goal
Compare scripting in Bash and PowerShell by solving the same problem in both environments.

## What I did
- Created consistent '.log' files on ubuntu and Windows to act as test data.
- Wrote 'find_errors.sh' in Bash to iterate over log files and count ERROR/WARN entries.
- Wrote 'Find-Errors.ps1' in PowerShell to achieve the same results using object pipelines.
- Linted and tested the Bash script with ShellCheck.
- Verified both scripts against the sample logs, confirming functional equivalence.

## Deliverables
- [Bash log search script](docs/scripts/find_errors.sh) 
- [PowerShell log search script](docs/scripts/Find-Errors.ps1)
- [Commands executed during the lab](docs/command_log.md)
- [Lab Setup](docs/labsetup.md) - recap with reflections and screenshots

