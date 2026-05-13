echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu" | awk -F':' '{print $2}' | awk -F',' '{print $1, $2, $4}'
echo "===MEMORY USAGE==="
MEMORY_LINE=$(free -h | grep "Mem")
echo "===TOTAL MEMORY==="
echo $MEMORY_LINE | awk '{print $2}'
echo "===USED MEMORY==="
echo $MEMORY_LINE | awk '{print $3}' 
echo "===FREE MEMORY==="
echo $MEMORY_LINE | awk '{print $4}' 
