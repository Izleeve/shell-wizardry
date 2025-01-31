# 📊 Disk Usage Report Task

## 📜 Task Description

As a system administrator at **MyComp**, you are responsible for monitoring and maintaining the health of the company’s servers. To ensure that disk usage does not exceed critical levels and to keep an eye on storage consumption trends, you need to generate regular disk usage reports. These reports will be emailed to you daily.

## 🚀 Requirements

### 1. **Generate Disk Usage Report**:
- The script should collect disk usage information for all mounted filesystems.
- The report must include the following details:
  - Filesystem name
  - Total size
  - Used space
  - Available space
  - Usage percentage

### 2. **Email the Report**:
- The report should be emailed to the system administrator (e.g., `admin@mycomp.com`) every day.
- Ensure the email has a clear subject line and body, making it easy to identify and read the report.

### 3. **Automate the Process**:
- Set up the script to run daily using a cron job, ensuring regular monitoring without manual intervention.

## 🛠️ Implementation Steps

1. **Create the Script**:
   - Write a shell script that gathers the required disk usage information using the `df` command.

2. **Format the Report**:
   - Structure the output in a clear and readable format to be included in the email.

3. **Send the Email**:
   - Use the `sendmail` or `mail` command to send the report to the specified email address.

4. **Set Up a Cron Job**:
   - Edit the crontab file to schedule the script to run daily at a specified time (e.g., 8 AM).

## 🎊 Conclusion

This task ensures that disk usage on the servers is monitored effectively, helping prevent issues related to storage capacity. Regular reporting will provide valuable insights into usage trends, enabling proactive management.

## 📬 Questions or Feedback?
If you have any questions or feedback regarding this task, feel free to reach out! We're here to help. 🤝

---

