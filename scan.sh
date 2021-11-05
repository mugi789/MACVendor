#!/bin/bash
cat << "EOF"                                                                
  __  __   _   ___  __   __           _         
 |  \/  | /_\ / __| \ \ / /__ _ _  __| |___ _ _ 
 | |\/| |/ _ \ (__   \ V / -_) ' \/ _` / _ \ '_|
 |_|  |_/_/ \_\___|   \_/\___|_||_\__,_\___/_|  

	Created by Mugi Fadilah
EOF
echo -ne '\n\r'
url='https://api.macvendors.com/'
echo -n -e " Masukkan mac address : \e[96m"
read mac
encode="${mac/:/-}"
echo -e "\033[0;31m============================================\033[0m"
scan=$url$encode
hasil=$(curl -s $scan)
echo -e " $hasil"
echo -e "\033[0;31m============================================\033[0m"
