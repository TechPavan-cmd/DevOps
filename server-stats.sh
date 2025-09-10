#!/bin/bash

echo "===== Server Performance Stats ====="
echo ""

# OS version
echo "OS Version:"
lsb_release -a 2>/dev/null || cat /etc/os-release
echo ""

# Uptime
echo "Uptime:"
uptime
echo ""

# CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

# Memory Usage
echo "Memory Usage:"
free -h
echo ""

# Disk Usage
echo "Disk Usage:"
df -h --total | grep total
echo ""

# Top 5 Processes by CPU
echo "Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

# Top 5 Processes by Memory
echo "Top 5 Processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo ""
