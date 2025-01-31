# 🔒 Firewall Rules Automation Task

## 📜 Task Description

As a system administrator at **MyComp**, you are responsible for managing firewall rules to ensure the security of your servers. This task involves configuring and managing firewall rules using either `firewalld` or `iptables`, which includes opening and closing specific ports. To streamline this process, you need to develop a script that automates the configuration of firewall rules, allowing for easy management of port settings.

## 🚀 Requirements

### 1. **Open Ports**:
- The script should allow users to open specific ports for both `firewalld` and `iptables`.

### 2. **Close Ports**:
- The script should also allow users to close specific ports for both `firewalld` and `iptables`.

### 3. **Display Current Rules**:
- Provide an option to list the current firewall rules, helping users understand the existing configuration.

### 4. **Input Validation**:
- Implement input validation to ensure that users provide correct port numbers and protocols (TCP/UDP).

### 5. **Apply Configuration**:
- Ensure that the firewall rule changes are applied effectively and immediately.

### 6. **User-Friendly Interface**:
- Create clear prompts and feedback for users to guide them through the process, enhancing usability.

## 🛠️ Implementation Steps

1. **Create the Script**:
   - Write a shell script that offers options for opening and closing ports, as well as displaying current rules.

2. **Validate Inputs**:
   - Include validation checks to confirm that the port numbers are within the valid range (1-65535) and that the protocols specified are either `tcp` or `udp`.

3. **Implement Port Management**:
   - Use commands appropriate for `firewalld` (e.g., `firewall-cmd`) and `iptables` (e.g., `iptables` command) to modify firewall rules as per user inputs.

4. **Display Current Rules**:
   - Implement functionality to list current firewall rules for both `firewalld` and `iptables`, providing users with visibility into the configuration.

5. **Provide User Feedback**:
   - Ensure that the script provides informative messages throughout its execution, confirming successful actions or indicating errors.

## 🎊 Conclusion

This automation script will simplify the management of firewall rules at **MyComp**, enhancing security through effective control of network traffic. By automating port management and providing user-friendly prompts, you can ensure a smooth experience for system administrators.

## 📬 Questions or Feedback?
If you have any questions or need further clarification regarding this task, please don't hesitate to reach out! We’re here to help. 🤝

---
