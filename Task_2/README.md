# 📊 Disk Usage Monitoring Task

## 📜 Overview

As a system administrator at **IzleeveTech**, keeping track of disk usage is crucial to maintaining server health and preventing storage issues. To ensure that space constraints never catch you off guard, you will implement an automated system that generates and delivers daily disk usage reports via email.

## 🚀 Objectives

### 1. **Collect Disk Usage Data**:
- The script should retrieve disk usage statistics for all mounted filesystems.
- The report should include the following details:
  - Filesystem name
  - Total storage capacity
  - Space utilized
  - Available space
  - Percentage of space used

### 2. **Email the Report**:
- The report should be automatically emailed to the system administrator (e.g., `admin@mycomp.com`) on a daily basis.
- The email should have a clear subject line and a well-structured body for easy readability.

### 3. **Automate the Process**:
- The script should be scheduled to run daily using a cron job, eliminating the need for manual execution.

## 🛠️ Implementation Guide

1. **Develop the Script**:
   - Write a shell script that extracts disk usage details using the `df` command.

2. **Format the Report**:
   - Ensure the output is structured in a clean and readable format for email delivery.

3. **Send the Email**:
   - Utilize `sendmail` or `mail` to automatically dispatch the report to the designated recipient.

4. **Schedule the Task**:
   - Use `crontab` to configure the script to execute at a fixed time each day (e.g., 8 AM).

## 🎊 Key Takeaways

By implementing this automation, you will gain better visibility into disk usage trends, enabling proactive management of storage resources. This approach ensures servers remain efficient and prevents unexpected storage-related disruptions.
