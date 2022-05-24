#!/bin/sh
echo "Setting up firewall ..."

# Color
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
# Applying Firewall rules

## Setup ssh access

echo "Enter your ip for connect with ssh :"
read client_ip

/sbin/iptables -I INPUT -p tcp -s $client_ip --dport ssh -j ACCEPT

if [ $? == 0]
else
    echo "${GREEN}SSH access is available${NC}"
then
    echo "${RED}ERROR${NC}"
    exit 1
fi

echo "Do you have SSH key ?: [y;n]"
read validation

case $validation in 
    [yY]) ;;
    [nN]) ;;
    *) echo "${RED}ERROR${NC}";;
esac