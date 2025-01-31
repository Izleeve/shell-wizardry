#!/bin/bash

validate_ip() {  # Function to validate the IP address
    local ip=$1
    if [[ ! "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo "Invalid IP address format: $ip"
        exit 1
    fi
}

read -p "Enter network interface (e.g., ens0): " interface
read -p "Enter static IP address: " ip
validate_ip "$ip"  # Validate the IP

read -p "Enter subnet mask: " subnet
validate_ip "$subnet"  # Validate the subnet mask

read -p "Enter gateway: " gateway
validate_ip "$gateway"  # Validate the gateway

read -p "Enter primary DNS server: " dns1
validate_ip "$dns1"  # Validate the primary DNS

read -p "Enter secondary DNS server (optional): " dns2
if [[ -n "$dns2" ]]; then
    validate_ip "$dns2"  # Validate the secondary DNS if provided
fi

# Configuration of network interface with static IP address using nmcli
nmcli con mod "$interface" ipv4.addresses "$ip/$subnet"
nmcli con mod "$interface" ipv4.gateway "$gateway"
nmcli con mod "$interface" ipv4.method manual
nmcli con mod "$interface" ipv4.dns "$dns1"  # Apply the primary DNS

if [[ -n "$dns2" ]]; then
    nmcli con mod "$interface" ipv4.dns "$dns1 $dns2"  # Apply the secondary DNS if provided
fi

nmcli con up "$interface"  # Restart the network connection to apply all the changes made
echo "Network configuration applied successfully."
