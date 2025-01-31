# 🔥 Automated Firewall Configuration Task  

## 📜 Overview  

At **IzleeveTech**, maintaining robust security for servers is a top priority. As a system administrator, one of your key responsibilities is managing firewall rules to regulate network traffic. Configuring firewall policies manually can be tedious and error-prone, so an automated script is required to handle opening and closing ports seamlessly. This script should work with both `firewalld` and `iptables`, ensuring efficient rule management.  

## 🚀 Objectives  

### 1. **Enable Port Access**:  
- The script should provide an option to open specific ports for both `firewalld` and `iptables`.  

### 2. **Restrict Port Access**:  
- Users should be able to block or close specific ports when required.  

### 3. **View Existing Rules**:  
- Implement functionality to display currently active firewall rules, giving administrators an overview of the setup.  

### 4. **Ensure Valid Input**:  
- Validate inputs to ensure correct port numbers (1-65535) and appropriate protocol selection (TCP/UDP).  

### 5. **Apply Changes Instantly**:  
- The firewall modifications should take effect immediately upon execution.  

### 6. **User-Friendly Interaction**:  
- The script should provide clear prompts and informative messages to guide users through the process.  

## 🛠️ Implementation Steps  

1. **Develop the Firewall Script**:  
   - Write a shell script that provides a menu-driven approach for managing firewall rules.  

2. **Implement Input Verification**:  
   - Ensure user input is validated, preventing incorrect port numbers or invalid protocol entries.  

3. **Manage Firewall Rules Dynamically**:  
   - Utilize `firewall-cmd` for `firewalld` and `iptables` commands for `iptables` to apply the changes.  

4. **Retrieve Current Rules**:  
   - Provide an option for users to list active firewall rules to understand the existing configuration.  

5. **Enhance User Experience**:  
   - Ensure the script offers meaningful feedback on every action, confirming success or highlighting issues.  

## 🎊 Summary  

This automated solution simplifies firewall rule management at **IzleeveTech**, making security adjustments more efficient and reducing the chances of human error. By streamlining port control and improving user interaction, this tool ensures an effective and hassle-free experience for administrators.  
