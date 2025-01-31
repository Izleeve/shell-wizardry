# 🎉 User Account Creation Task 🎉

## 📜 Task Description

Welcome to the **User Account Creation** project! This initiative aims to automate the setup of user accounts for a batch of 100 new engineers joining **IzleeveTech**. As a system administrator, your mission is to ensure these accounts are configured with the specified requirements.

## 🚀 Requirements

### 🧑‍💻 User Account Specifications

1. **Username and Home Directory**:
   - Each username should follow the format: `mycompusr1`, `mycompusr2`, ..., up to `mycompusr100`.
   - Each user will have a corresponding home directory in the format: `/home/mycompusr1`, `/home/mycompusr2`, ..., `/home/mycompusr100`.

2. **🔐 Password**:
   - Passwords will match usernames. For example:
     - Username: `mycompusr1` 
     - Password: `mycompusr1`
   - Set passwords to expire every month for security! 🔒

3. **🛡️ Permissions**:
   - Each home directory must have permissions set to `700`, allowing only the respective user to read, write, and execute files within their directory.

4. **👥 Group Membership**:
   - Add each user to the `wheel` group to grant them administrative privileges. 🚀

5. **📅 Password Expiration Notification**:
   - Implement a mechanism to notify users of their password expiration—because we care about security! 💌

## 🛠️ Implementation Steps

1. **Create User Accounts**:
   - Use a shell script to automate the creation of user accounts and their home directories.
   - Ensure passwords are set correctly.

2. **Set Permissions**:
   - Modify the permissions of each user's home directory to `700`.

3. **Add Users to Wheel Group**:
   - Use the appropriate command to add each user to the `wheel` group.

4. **Set Password Expiration**:
   - Configure the password expiration policy to notify users monthly.

5. **✅ Test the Configuration**:
   - Verify that all users have been created correctly and that permissions and group memberships are set as required.

## 🎊 Conclusion

This task ensures that our new engineers are set up with secure and properly configured user accounts, making their onboarding experience smooth and efficient. Let's welcome them to **IzleeveTech**! 🎉
