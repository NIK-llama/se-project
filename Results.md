---

### **1. Running `log_monitor.sh`**
```bash
$ ./log_monitor.sh
Starting log monitoring...
Monitoring completed.
```
- The script filters `CRITICAL` logs from `/var/log/syslog` and stores them in `filtered_logs.txt`.  
- It then calls `alert.sh` to send an email notification.

---

### **2. Contents of `filtered_logs.txt`**
```plaintext
Mar 31 12:45:23 server1 kernel: [12345.678901] CRITICAL: Disk failure detected
Mar 31 12:46:05 server1 sshd[2345]: CRITICAL: Failed login attempt from 192.168.1.10
```
- The file contains logs matching `"CRITICAL"`.

---

### **3. Running `alert.sh`**
```bash
$ ./alert.sh filtered_logs.txt
Sending alert...
```
- This script reads `filtered_logs.txt` and sends its contents via email.

---

### **4. Email Sent (Simulated Email Body)**
```
Subject: Critical Log Alert

Mar 31 12:45:23 server1 kernel: [12345.678901] CRITICAL: Disk failure detected
Mar 31 12:46:05 server1 sshd[2345]: CRITICAL: Failed login attempt from 192.168.1.10
```
- The recipient (`admin@example.com`) gets an email alert.

---
