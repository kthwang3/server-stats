#!/bin/bash

#AUTHOR: KYLE WANG
#A SCRIPT THAT DISPLAYS SERVER PERFORMANCE STATS
#5/12/2026
echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu" | awk -F':' '{print $2}' | awk -F',' '{print $1, $2, $4}'
echo "===MEMORY USAGE==="
MEMORY_LINE=$(free -h | grep "Mem")
echo $MEMORY_LINE | awk '{print "Total: "$2, "Used: "$3, "Free: "$4}'
echo "===DISK USAGE==="
df -h | grep "/$" | awk '{print "Total: "$2, "Used: "$3, "Free: "$4}'
echo "=== TOP 5 CPU PROCESSES ==="
echo "USER %CPU COMMAND"
ps aux | sort -nr -k3,3 | head -n 5 | awk '{print $1, $3, $11}'    
echo "=== TOP 5 MEMORY PROCESSES ==="
echo "USER %MEM COMMAND"
ps aux | sort -nr -k4,4 | head -n 5 | awk '{print $1, $4, $11}'
echo "=== OS VERSION ==="
cat /etc/os-release | grep "VERSION_ID" | awk -F'"' '{print $2}'
echo "=== UPTIME ==="
uptime -p
echo "=== LOGGED IN USERS ==="
uptime | grep -oE "[0-9]+ users" 
echo "=== LOAD AVERAGES ==="
uptime | awk -F'[a-z]:' '{ print $2 }'
echo "=== NUMBER OF FAILED LOGIN ATTEMPTS ==="
sudo grep -c "Failed password" /var/log/auth.log


