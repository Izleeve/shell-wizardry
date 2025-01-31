# 🌐 Automated Network Setup Task

## 📜 Overview

As a system administrator at **IzleeveTech**, ensuring seamless and secure network connectivity across multiple servers is a key responsibility. Manually setting up network interfaces, assigning static IPs, and configuring DNS can be time-consuming and prone to errors. To simplify this process, an automated script is needed to handle network configurations efficiently and consistently.

## 🚀 Key Objectives

### 1. **Network Interface Setup**:
- The script should support configuration for multiple interfaces (e.g., `eth0`, `eth1`).

### 2. **Assign Static IP Addresses**:
- Users should be able to specify static IPs, subnet masks, and gateway addresses for chosen network interfaces.

### 3. **DNS Configuration**:
- The script must modify relevant system files (e.g., `/etc/resolv.conf`) to apply custom DNS settings for reliable name resolution.

### 4. **Input Verification**:
- Implement validation checks to ensure all provided IPs, subnet masks, and gateway details adhere to standard networking formats.

### 5. **Apply and Activate Settings**:
- Network configurations should be applied dynamically without requiring a system reboot.

## 🛠️ Implementation Guide

1. **Develop the Configuration Script**:
   - Create a shell script that prompts for required network details (interface name, static IP, subnet mask, gateway, and DNS servers).

2. **Implement Input Validation**:
   - Integrate validation mechanisms to reject improperly formatted IP addresses and other invalid inputs.

3. **Apply Network Settings**:
   - Utilize `nmcli` or equivalent commands to assign static IPs and configure network interfaces dynamically.

4. **Modify DNS Settings**:
   - Ensure DNS configurations are updated in the appropriate system files for accurate domain resolution.

5. **Enforce Changes Without Reboots**:
   - Apply new network settings immediately using appropriate system commands or services without restarting the machine.

## 🎊 Summary

This automation solution enhances the efficiency of network configurations across **IzleeveTech**’s infrastructure. By reducing manual intervention and ensuring consistency, this tool will improve network reliability and minimize errors in connectivity setup.
