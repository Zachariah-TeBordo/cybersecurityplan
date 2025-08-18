# Command Log - Section 2: Linux Fundamentals for Security Pros

---

## 1) Create a new analyst user
```bash
sudo adduser analyst1
```
![New user created](../screenshots/ubuntu/new_user_created.png)

---

## 2) Create a file and view it's permissions
``` bash
echo "Test log file" | sudo tee /home/analyst1/testfile.txt
sudo ls -l /home/analyst1/testfile.txt
```
![File created and listed with permissions](../screenshots/ubuntu/file_created_permissions.png)

---

## 3) Change permissions and verify
``` bash
sudo chmod 600 /home/analyst1/testfile.txt
sudo ls -l /home/analyst1/testfile.txt
sudo chmod 644 /home/analyst1/testfile.txt
sudo ls -l /home/analyst1/testfile.txt
```
![Permissions changed and verified](../screenshots/ubuntu/permissions_changed.png)

---

## 4) View authentication log
``` bash
sudo less /var/log/auth.log
```
![Auth Log View](../screenshots/ubuntu/auth_log_view.png)

---

## 5) View System Log
``` bash
sudo less /var/log/syslog
```
![System log view](../screenshots/ubuntu/system_log_view.png)

---

## Environment
- Ubuntu Server LTS VM (VirtualBox, NAT + Host-only)
- All commands executed as admin user with sudo privileges