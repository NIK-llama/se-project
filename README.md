# Software Architecture Document (SAD)

## **1. Introduction**
**Project Name:** Linux-Based Log Monitoring Automation System  
**Objective:** Automate log monitoring in Linux by filtering critical errors from `/var/log/syslog` and sending email alerts.

## **2. Software Design Principles**

### **2.1 Abstraction**
The system will perform three main functionalities:
1. **Log Collection** – Read system logs from `/var/log/syslog`.
2. **Filtering** – Identify critical errors using `grep` and `awk`.
3. **Alerting** – Send notifications via email.

### **2.2 Encapsulation**
- The script will group related tasks into functions (e.g., `read_logs`, `filter_critical_errors`, `send_alerts`).

### **2.3 Modularity**
- The script will be divided into multiple reusable modules:
  - `log_monitor.sh` – Core script.
  - `config.sh` – Configuration file for email settings.
  - `alert.sh` – Handles email alerts.

### **2.4 Cohesion & Coupling**
- High cohesion: Each module handles a specific task.
- Low coupling: Modules interact via well-defined inputs and outputs.

## **3. System Design**

### **3.1 Data Flow Diagram (DFD)**
**Level 0:**
1. The system reads `/var/log/syslog`.
2. Filters critical logs.
3. Sends email notifications.

### **3.2 Class Diagram (if using Python OOP)**
- **LogMonitor** (Reads logs, filters errors)
- **AlertHandler** (Sends alerts)

### **3.3 Deployment Design**
#### **Installation Instructions:**
1. Clone repository: `git clone https://github.com/NIK-llama/se-project.git`
2. Make scripts executable: `chmod +x log_monitor.sh alert.sh`
3. Configure email settings in `config.sh`.
4. Run: `./log_monitor.sh`
5. (Optional) Add to crontab: `crontab -e` → `*/5 * * * * /path/to/log_monitor.sh`

## **4. Shell Script Implementation**
- Modular functions for reading logs, filtering errors, and sending alerts.
- Uses `grep`, `awk`, and `mail` for automation.

## **5. Software Configuration Management (SCM)**
- Git repository with branches: `main`, `feature-log-filter`, `feature-email-alert`
- Versioning: `v1.0`, `v1.1`
- Change tracking via commits and pull requests.

## **6. Performance Testing & Risk Management**

### **6.1 Performance Testing**
- **Tools Used:** `top`, `htop`, `iostat`, `vmstat`
- **Metrics:** CPU usage, memory consumption

### **6.2 Risk Analysis**
| Risk | Type | Mitigation Strategy |
|------|------|---------------------|
| Incorrect log parsing | Operational | Test regex patterns before deployment |
| Permission issues | Technical | Use proper file permissions and sudo when necessary |
| Email not sent | Technical | Validate SMTP settings and use log debugging |

## **7. Conclusion**
This project demonstrates software engineering design principles in a practical Linux automation system. The modular and efficient shell script ensures proper logging, monitoring, and alerting of critical system errors.

## **8. Submission Requirements**
- Report (this document)
- Shell script files (`log_monitor.sh`, `alert.sh`, `config.sh`)
- Git repository link: `https://github.com/NIK-llama/se-project.git`
- Screenshots of execution and test results

