#!/bin/bash
# This script monitors CPU and memory usage

# Get the current usage of CPU and memory
cpuUsage=$(top -bn1 | awk '/Cpu/ { print int($2) }')
totalMemory=$(free -m | awk '/Mem/{print $2}')
usedMemory=$(free -m | awk '/Mem/{print $3}')
memUsagePercent=$(echo "scale=2; ($usedMemory / $totalMemory) * 100" | bc)

# Remove the decimal point from percentages and add leading zero if needed
cpuUsage=$(printf "%02d" "$cpuUsage")
memUsagePercent=$(printf "%02d" "$memUsagePercent")

# Get system load - only the first column
loadAvg=$(uptime | awk -F'load average:' '{print $2}' | awk '{print $1}' | sed 's/,$//')

# Print the usage
echo "🔥 $cpuUsage% ($loadAvg) 🧠 $usedMemory MB ($memUsagePercent%)"
