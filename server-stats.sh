echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu" | awk -F':' '{print $2}' | awk -F',' '{print $1, $2, $4}'
