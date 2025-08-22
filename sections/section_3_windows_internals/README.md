## Section 3 - Windows Internals for Security Pros

## Goal
I learned how Windows records logon activity and how to surface failed login attempts in the Security Log.

## Study Plan
- I read Microsoft documentation on Event Viewer to understand how logs are categorized and filtered.
- I reviewed the Sysinternals overview to compare tools like Process Explorer and Process Monitor with the Windows Event Viewer.

# Lab
- I enabled auditing for logon events, including both success and failure.
- I intentionally generated failed logons by entering the wrong password multiple times.
- I located Event ID 4625 (failed logon) inside Event Viewer and inspected its details.

## Deliverable
- Screenshots of Event Viewer showing:
	- Auditing enabled for logon events.
	- Filter applied for Event ID 4625.
	- Filtered results list with failed logon entries.
	- Details of a failed logon event in both General and Details tabs.

## Documentation
- [Lab Setup](docs/lab_setup.md)
- [Changelog](../../CHANGELOG.md)