#!/bin/bash
echo -e "**********************************"
echo -e "**********************************"
echo -e "**********************************"
echo -e "__________________________________"
echo -e "Systen architecture: "
arch
echo -e "__________________________________"
echo -e "Linux core version: "
uname -r
echo -e "__________________________________"
echo -e "Number of physical processors: "
#cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l
grep processor /proc/cpuinfo | wc -l
echo -e "__________________________________"
echo -e "Number of virtual processors: "
nproc --all
#cat /proc/cpuinfo | grep "^processor"
#echo -e "Total, usage and free RAM: "
#free -t
echo -e "__________________________________"
echo -e "Usage free RAM in precentage: "
#free |grep Mem |awk '{print $3/$2 * 100.0}'
free -m | grep 'Mem:' | awk '{printf"%d/%dMB (%.2f%%)", $3, $2, $3 * 100 / $2}'
echo -e "\n__________________________________"
echo -e "CPU usage in precentage: "
top -b -n 1 -d1 | grep "Cpu(s)" | awk '{print $2}'
echo -e "__________________________________"
echo -e "Disk usage in precentage: "
#df -P |awk '{print $5}' | tail -n 7
df -BM -t ext4 --total | grep 'total' | awk '{printf"%d/%.1fGb (%d%%)", $3, $2 / 1024, $5}' | tail >
echo -e "\n__________________________________"
echo -e "Last reboot date and time: "
last |tail -n 1
#who -b | awk '{print $3, $4}'
echo -e "__________________________________"
echo -e "Active connections: "
#lsof -i
netstat -n | grep 'tcp' | wc -l
echo -e "__________________________________"
echo -e "Active users: "
who | wc -l
#who --count
echo -e "__________________________________"
echo -e "Server IpV4 adress: "
hostname -I
#ip a | grep 'inet 10' | awk '{printf"%.9s", $2}'
echo -e "__________________________________"
echo -e "Server mac adress: "
cat /sys/class/net/enp0s3/address
#ip a | grep 'ether' | awk '{print $2}'
echo -e "__________________________________"
echo -e "Number of sudo commands: "
cat /var/log/sudo | grep 'COMMAND' | wc -l | awk '{$2; print $0}'
echo -e "**********************************"
echo -e "**********************************"
echo -e "**********************************"