# Server Performance Stats

A Linux monitoring script that displays basic server health information directly in the terminal

## Featured Stats

- CPU usage
- Memory Usage
- Disk Usage
- Uptime
- CPU + Memory Processes
- Load Average
- Users and Failed Login Attempts

## How to Run

1. Clone the Repository
2. Make the script executable in Bash: 
 ```bash
   chmod +x server-stats.sh
 ```
3. Run the script:
```bash
    ./server-stats.sh
```

## Sample Output
=== CPU USAGE ===
  0.0 us   0.0 sy 100.0 id
===MEMORY USAGE===
Total: 7.7Gi Used: 547Mi Free: 6.9Gi
===DISK USAGE===
Total: 1007G Used: 1.6G Free: 955G
=== TOP 5 CPU PROCESSES ===
USER %CPU COMMAND
systemd+ 0.0 /usr/lib/systemd/systemd-resolved
syslog 0.0 /usr/sbin/rsyslogd
root 0.0 /init
root 0.0 /init
root 0.0 /init
=== TOP 5 MEMORY PROCESSES ===
USER %MEM COMMAND
root 0.3 /usr/bin/python3
root 0.3 /usr/bin/python3
root 0.2 /usr/lib/systemd/systemd-journald
systemd+ 0.1 /usr/lib/systemd/systemd-resolved
root 0.1 /usr/lib/systemd/systemd-logind
=== OS VERSION ===
26.04
=== UPTIME ===
up 5 hours, 7 minutes
=== LOGGED IN USERS ===
=== LOAD AVERAGES ===
 0.00, 0.00, 0.00
=== NUMBER OF FAILED LOGIN ATTEMPTS ===
[sudo: authenticate] Password:
2 

## Requirements
- Linux or WSL
