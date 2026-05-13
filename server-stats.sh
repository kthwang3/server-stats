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
