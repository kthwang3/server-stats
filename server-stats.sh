echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu" | awk -F':' '{print $2}' | awk -F',' '{print $1, $2, $4}'
echo "===MEMORY USAGE==="
MEMORY_LINE=$(free -h | grep "Mem")
echo $MEMORY_LINE | awk '{print "Total: "$2, "Used: "$3, "Free: "$4}'
