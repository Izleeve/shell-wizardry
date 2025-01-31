#!/bin/bash

recipient="admin@mycomp.com"  # Assigning a variable name "recipient"
subject="Disk Usage report of $(hostname) on $(date +'%d-%m-%y')"  # Subject of the email
report=$(df -h)  # Disk usage report

body="Hello,

Please find the daily disk usage report of $(hostname) on $(date +'%d-%m-%y'):

$report

Best regards,
System Administrator"  # Email body

{
    echo "To: $recipient"
    echo "Subject: $subject"
    echo
    echo "$body"
} | sendmail -t  # Send the email
