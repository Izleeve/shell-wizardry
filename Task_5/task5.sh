#!/bin/bash

display_firewalld_rules() {  # Function to display current firewalld rules
    sudo firewall-cmd --list-all
}

display_iptables_rules() {  # Function to display current iptables rules
    sudo iptables -L -v -n
}

open_firewalld_port() {  # Function to open a port using firewalld
    local port=$1
    local protocol=$2
    sudo firewall-cmd --zone=public --add-port=${port}/${protocol} --permanent
    sudo firewall-cmd --reload
}

open_iptables_port() {  # Function to open a port using iptables
    local port=$1
    local protocol=$2
    sudo iptables -A INPUT -p ${protocol} --dport ${port} -j ACCEPT
    sudo iptables-save | sudo tee /etc/sysconfig/iptables
}

close_firewalld_port() {  # Function to close a port using firewalld
    local port=$1
    local protocol=$2
    sudo firewall-cmd --zone=public --remove-port=${port}/${protocol} --permanent
    sudo firewall-cmd --reload
}

close_iptables_port() {  # Function to close a port using iptables
    local port=$1
    local protocol=$2
    sudo iptables -D INPUT -p ${protocol} --dport ${port} -j ACCEPT
    sudo iptables-save | sudo tee /etc/sysconfig/iptables
}

validate_port() {  # Function to check if the port is valid
    local port=$1
    if [[ $port -lt 1 || $port -gt 65535 ]]; then
        echo "Invalid port number: $port. Port number must be between 1 and 65535."
        return 1
    fi
}

validate_protocol() {  # Function to check if the protocol is valid
    local protocol=$1
    if [[ "$protocol" != "tcp" && "$protocol" != "udp" ]]; then
        echo "Invalid protocol: $protocol. Protocol must be 'tcp' or 'udp'."
        return 1
    fi
}

# User-friendly interface
echo "Firewall Rules Automation Script"
echo "1. Open port"
echo "2. Close port"
echo "3. Display current rules"
echo "4. Return"
read -p "Choose an option: " option

case $option in
    1)
        read -p "Enter port number to open: " port
        validate_port $port || exit 1
        read -p "Enter protocol (tcp/udp): " protocol
        validate_protocol $protocol || exit 1
        read -p "Use firewalld or iptables (f/i): " firewall_type
        
        if [[ "$firewall_type" == "f" ]]; then
            open_firewalld_port $port $protocol
        elif [[ "$firewall_type" == "i" ]]; then
            open_iptables_port $port $protocol
        else
            echo "Invalid option. Please choose 'f' for firewalld or 'i' for iptables."
            exit 1
        fi
        echo "Port $port/$protocol opened successfully."
        ;;
    2)
        read -p "Enter port number to close: " port
        validate_port $port || exit 1
        read -p "Enter protocol (tcp/udp): " protocol
        validate_protocol $protocol || exit 1
        read -p "Use firewalld or iptables (f/i): " firewall_type
        
        if [[ "$firewall_type" == "f" ]]; then
            close_firewalld_port $port $protocol
        elif [[ "$firewall_type" == "i" ]]; then
            close_iptables_port $port $protocol
        else
            echo "Invalid option. Please choose 'f' for firewalld or 'i' for iptables."
            exit 1
        fi
        echo "Port $port/$protocol closed successfully."
        ;;
    3)
        read -p "Display rules for firewalld or iptables (f/i): " firewall_type
        
        if [[ "$firewall_type" == "f" ]]; then
            display_firewalld_rules
        elif [[ "$firewall_type" == "i" ]]; then
            display_iptables_rules
        else
            echo "Invalid option. Please choose 'f' for firewalld or 'i' for iptables."
            exit 1
        fi
        ;;
    4)
        echo "Returning to the script."
        exit 0
        ;;
    *)
        echo "Invalid option. Please choose a valid option."
        exit 1
        ;;
esac
