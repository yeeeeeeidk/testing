#!/bin/bash

# ASCII Logo
echo "                             A"
echo "                             /_\\"
echo "                     :       /_|_\\"
echo "                    :::     /|__|_\\"
echo "                   ::.::   /|_|__|_\\      :"
echo "                  ::.:.:: /__|_|__|_\\    :.:"
echo "                 :..:.:./_|__|__|__|\\  :.:.:"
echo "                :.:..:./|__|___|__|__\\:.:..::"
echo "               :.:..:../__|___|__|___|_\\..:..:::"
echo " ..............:..:../_|__|___|___|___|\\..:..::::::::::::::::::::"
echo "    ..........:..:../__|___|___|___|___|_\\..:::::::::::::::::::::"
echo "::::::::::::::.:..:./_|__|___|___|___|___|\\::::::::::::::::::::::"
echo "        .........../___|___|___|___|___|___\\...................."
echo "                     /..!...!...!...!...!...\\................."
echo "                    /________________________\\.............."

# Function to display menu
display_menu() {
    echo "Multi-Tool Menu:"
    echo "1. System Information"
    echo "2. Exit"
    echo
}

# Function to display system information
system_info() {
    echo "System Information:"
    uname -a
    echo
    uptime
    echo
    free -h
    echo
}

# Main script
while true; do
    display_menu
    read -p "Enter your choice: " choice
    case $choice in
        1) system_info ;;
        2) echo "Exiting..."; exit ;;
        *) echo "Invalid option. Please choose again." ;;
    esac
    echo
done
