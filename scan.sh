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
menu=("Manual" "Mass" "Quit")
select opt in "${menu[@]}"
do
    case $opt in
        "Manual")
            echo -n -e ' Masukkan mac address : \e[96m'
            read mac
            encode="${mac/:/-}"
            echo -e "\033[0;31m============================================\033[0m"
            scan=$url$encode
            hasil=$(curl -s $scan)
            echo -e " $hasil"
            echo -e "\033[0;31m============================================\033[0m"
            ;;
        "Mass")
            echo -n -e ' Masukkan nama file : \e[96m'
            read file
            echo -e "\033[0;31m============================================\033[0m"
            while IFS= read -r line;
            do
            encode="${line/:/-}"
            scan=$url$encode
            hasil=$(curl -s $scan)
            echo -e "$line - $hasil"
            done < $file
            echo -e "\033[0;31m============================================\033[0m"
            ;;
        "Quit")
            break
            ;;
        *) echo "Opsi tidak valid";;
    esac
done
