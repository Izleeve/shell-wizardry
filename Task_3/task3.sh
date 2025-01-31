#!/bin/bash

directory=("/home" "/etc" "/var/www")  # Directories to back up
backup_location="/backup"  # Backup location
date=$(date +'%d-%m-%Y')  # Date for backup files
mkdir -p "$backup_location"  # Create the backup directory

for i in "${directory[@]}"; do  # Loop to back up all directories
    dir=$(basename "$i")  # Use the directory name for the backup file
    tar -czf "$backup_location/${dir}_backup_$date.tar.gz" "$i"  # Create a tarball

    if [ $? -eq 0 ]; then  # Check if the backup was successful
        echo "Backup of $i completed successfully"
    else
        echo "Backup of $i failed"
    fi
done

# Remove backup files older than 7 days
find "$backup_location" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

# Email notification
recipient="admin@mycomp.com"  # Recipient email address
subject="Backup data of $(hostname) on $(date +'%d-%m-%Y')"  # Email subject
body="Hello,

Please find the backup process of $(hostname) on $(date +'%d-%m-%Y'). The backup of directories
${directory[@]} is completed.

Backup older than 7 days will be deleted as per retention policy.

Best regards,
System Administrator"  # Email body

{
    echo "To: $recipient"
    echo "Subject: $subject"
    echo
    echo "$body"
} | sendmail -t  # Send the email
