# 🌐 Network Configuration Automation Task

## 📜 Task Description

As a system administrator at **MyComp**, it is your responsibility to configure the network interfaces on various servers. This process involves setting static IP addresses, configuring network interfaces, and applying DNS settings to ensure stable and secure network connectivity. To streamline this task, you need to develop a script that automates the configuration of network interfaces and applies the necessary settings.

## 🚀 Requirements

### 1. **Configure Network Interfaces**:
- The script should allow the configuration of various network interfaces (e.g., `eth0`, `eth1`).

### 2. **Set Static IP Addresses**:
- Users should be able to specify static IP addresses, subnet masks, and gateways for the selected network interfaces.

### 3. **Apply DNS Settings**:
- Configure DNS servers by updating the `/etc/resolv.conf` file or other relevant configuration files to ensure proper name resolution.

### 4. **Input Validation**:
- Implement input validation to ensure that user inputs are correct and adhere to the required format for network configuration.

### 5. **Apply Configuration**:
- Apply the network configuration changes and ensure they take effect immediately without needing a system restart.

## 🛠️ Implementation Steps

1. **Create the Script**:
   - Write a shell script that prompts users for the necessary information (interface name, static IP, subnet mask, gateway, and DNS servers).

2. **Validate Inputs**:
   - Implement validation checks to ensure that the provided IP addresses and subnet masks are in the correct format.

3. **Configure Interfaces**:
   - Use `nmcli` or appropriate commands to configure the network interfaces with the provided static IP addresses and gateways.

4. **Update DNS Settings**:
   - Modify the `/etc/resolv.conf` file or relevant configuration files to apply the specified DNS settings.

5. **Apply Changes**:
   - Ensure that the changes take effect immediately by restarting the network service or using commands that apply the configuration dynamically.

## 🎊 Conclusion

This automation script will significantly enhance efficiency in managing network configurations across multiple servers at **MyComp**. By reducing manual intervention, you can ensure consistent and error-free network setups, leading to improved network reliability.

## 📬 Questions or Feedback?
If you have any questions or require assistance with this task, please feel free to reach out! We are here to support you. 🤝

---
