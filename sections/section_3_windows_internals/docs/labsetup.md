# Lab Setup - Section 3 - Windows Internals for Security Pros
This lab was performed in my Windows 10 VM. I enabled auditing, generated failed logon attempts, and inspected the resulting events in Event Viewer.

--

## Enable Auditing
I opened **Local Security Policy** (secpol.msc), navigated to Advanced Audit Policy Configuration -> Logon/Logoff, and enabled both **Success** and **Failure** for **Audit Logon**.

![Auditing Enabled](../screenshots/win10/01_auditing_enabled.png)

---

## Generate Failed Logons
I locked the VM and entered the wrong password three times in a row. This created multiple failed logon events (Event ID 4625) in the Security log.

--

## Filter Security Log for Event ID 4625
I Opened Event Viewer (eventvwr.msc), navigated to Windows Logs -> Security, and used **Filter Current Log** to filer for **Event ID 4625**

![Filter Current Log - 4625](../screenshots/win10/02_eventviewer_filter.png)

## View Filtered Results
After applying the filter, I saw the three failed logon events listen in the middle pane of Event Viewer.

![Filtered Results List](../screenshots/win10/03_filtered_results.png)

## Inspect Event Details (General Tab)
I selected one failed logon event (4625) and looked at the **General** tab. The failure reason, account for which logon failed, and logon type were all displayed.

![Event 4625 General Tab](../screenshots/win10/04_4625_general.png)

## Inspect Event Details (Friendly View)
I switched to the **Details** tab and chose **Friendly View** to see structured fields such as Subject, LogonType, and Account information.

![Event 4625 Details - Friendly View](../screenshots/win10/05_4625_details_friendly.png)

## Inspect Event Details (XML View)
I also viewed the **XML View** of the same event to see the raw XML data fields.

![Event 4625 Details - XML View](../screenshots/win10/06_4625_details_xml.png)

--

## Results
By the end of this lab, I had successfully enabled auditing, triggered failed logon events, and confirmed their appearance in Event Viewer.