#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
NC='\033[0m'
echo -e """${red}
██████╗  ██████╗ ██╗  ██╗
██╔══██╗██╔═████╗╚██╗██╔╝
██████╔╝██║██╔██║ ╚███╔╝ 
██╔═══╝ ████╔╝██║ ██╔██╗ 
██║     ╚██████╔╝██╔╝ ██╗
╚═╝      ╚═════╝ ╚═╝  ╚═╝
                         
"""
echo "[ iG: @1zsb , Github: 0xffvirus ]"
echo -n -e "${NC}enter file path : " & read file
echo -n "Port Check: " & read port
while read p; do
r=`timeout 5 bash -c 'exec 3<> /dev/tcp/'$p'/'$port';echo $?' 2>/dev/null~`                                                                       
  if [[ "$r" == "0" ]]; then
  echo -e "${green}[!] ${NC}$p | Port $port is Open "
  else 
  echo -e "${red}[?] ${NC}$p | Port $port is Closed"
  fi                                                                                  
done < $file