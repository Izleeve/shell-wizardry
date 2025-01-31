#!/bin/bash

for i in $(seq 1 100); do
    username="mycompusr$i"               # Assigning a variable name "username"
    password="mycompusr$i"               # Assigning a variable name "password"
    homedir="/home/$username"             # Assigning a variable name "homedir"
    
    useradd -m -d "$homedir" -s /bin/bash "$username"  # Creating the user

    if id "$username" &>/dev/null; then  # Checking if the user was created successfully
        echo "$username:$password" | chpasswd  # Updating the password for the user
        chmod 700 "$homedir"              # Setting permissions for the user's home directory
        usermod -aG wheel "$username"      # Adding the user to the wheel group
        chage -M 30 "$username"             # Setting password expiration for 30 days

        echo "Created user: $username"
    else
        echo "Failed to create user: $username"
    fi
done

echo "All users have been created successfully."
