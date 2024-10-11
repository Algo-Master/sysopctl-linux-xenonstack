# Sysopctl: A Linux System Resource Management Command

Sysopctl is a custom Linux command designed to manage system resources and tasks efficiently. It focuses on managing system services, monitoring processes, checking system health, and more. This tool is built to provide a simplified interface for commonly used system operations.

Features:
List active system services.
Monitor system load.
Start and stop system services.
Check disk usage.
Monitor system processes in real time.
Analyze system logs.
Backup system files.

Installation:

Open your terminal then ->
1. Clone the repository: git clone https://github.com/Algo-Master/sysopctl-linux-xenonstack.git
2. cd sysopctl
3. Make the script executable: chmod +x sysopctl.sh
4. Install the script: sudo cp sysopctl.sh /usr/local/bin/sysopctl
5. Verify the installation: sysopctl --version

Usage
1. Help Menu:
To see all available commands and their usage, run:
sysopctl --help

2. List Running Services:
To list all active services:
sysopctl service list

3. View System Load:
To view the current system load averages:
sysopctl system load

4. Manage Services:
Start or stop a service:
sysopctl service start <service-name>
sysopctl service stop <service-name>

5. Check Disk Usage:
To check disk usage statistics by partition:
sysopctl disk usage

6. Monitor System Processes:
To monitor real-time process activity:
sysopctl process monitor

7. Analyze System Logs:
To analyze recent critical log entries:
sysopctl logs analyze

8. Backup System Files:
To back up system files using rsync:
sysopctl backup <path-to-directory>

![Screenshot from 2024-10-10 16-59-06](https://github.com/user-attachments/assets/204e3040-220e-4f71-bcd8-fc8140805c3c)

![Screenshot from 2024-10-11 09-50-25](https://github.com/user-attachments/assets/eee51740-5093-46ad-b2b2-673368b4caa7)

![Screenshot from 2024-10-11 09-52-22](https://github.com/user-attachments/assets/dc7af612-932c-4a80-b15c-5fe41ca2b6de)
