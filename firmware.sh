#!/bin/sh
# Contact Michael.drost@wago.com
SCRIPTVERSION=0.0.1.0

# Environment Vars
PFC_IP=$(echo $PFC_IP)
PFC_PASSWORD=$(echo $PFC_PASSWORD)

# Start
clear
echo -e "\n\n"
echo -e "\e[00;32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\e[00;37m"
echo -e "\e[07;32m       Get actual Firmware on Remote Wago Controller                          \e[00;37m"
echo -e "\n"
echo -e "\e[07;33m                      Script-Version = $SCRIPTVERSION                         \e[00;37m"

 
sshpass -p $PFC_PASSWORD ssh -t -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" root@$PFC_IP << EOF
cat /etc/REVISIONS;
EOF
