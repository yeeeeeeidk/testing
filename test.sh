#!/bin/bash

# Function for system information
system_info() {
    echo "System Information:"
    uname -a
    echo "CPU Information:"
    lscpu
    echo "Memory Information:"
    free -m
}

# Function to get IP information from ipinfo.io
ip_info() {
    echo "Fetching IP information..."
    curl -s ipinfo.io
}

# Function to display ASCII logo
display_logo() {
cat << "EOF"
      A
     /_\
:      /_|_\
:::    /|__|_\
::.::  /|_|__|_\      :
:.:.::/__|_|__|_\    :.:
.:..:.:/_|__|__|__|\  :.:.:
:..:.:./|__|___|__|__\:.:..::
......../__|___|__|___|_\..:..::................
........./_|__|___|___|___|\:..:..::::::::::::::::::::
......../___|___|___|___|___\....................
......./..!...!...!...!...!..\...............
EOF
}

# Main menu
while true; do
    display_logo
    echo "Select an option:"
    echo "1. System Information"
    echo "2. IP Information"
    echo "3. Exit"
    read choice

    case $choice in
        1)
            system_info
            ;;
        2)
            ip_info
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select again."
            ;;
    esac
done
