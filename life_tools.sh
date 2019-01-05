#!/bin/bash

printf '\e[8;42;130t'
clear
echo "██╗     ██╗███████╗███████╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗";
echo "██║     ██║██╔════╝██╔════╝    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝";
echo "██║     ██║█████╗  █████╗         ██║   ██║   ██║██║   ██║██║     ███████╗";
echo "██║     ██║██╔══╝  ██╔══╝         ██║   ██║   ██║██║   ██║██║     ╚════██║";
echo "███████╗██║██║     ███████╗       ██║   ╚██████╔╝╚██████╔╝███████╗███████║";
echo "╚══════╝╚═╝╚═╝     ╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝";
echo "                                M3-Sec.        V: 0.01    ";
echo "";
echo "1     Map";
echo "2     Weather";
echo "";
echo "4     Update"
echo "5     exit";
read input
if [[ $input == 1 ]]; then
    clear
    telnet mapscii.me
elif [[ $input == 2 ]]; then
    clear
    echo "Please enter your Location:"
    read location
    curl wttr.in/$location
elif [[ $input == 4 ]]; then
    cd
    rm -rf Life-Tools
    cd    
    git clone https://github.com/M3-SEC/Life-Tools
    cd Life-Tools
    bash life_tools.sh      
elif [[ $input == 5 ]]; then
    exit
else
    clear
    echo '?'
fi
