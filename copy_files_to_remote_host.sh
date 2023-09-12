# Shell script to copy files from source to remote host destination

#!/bin/bash

# Define source directory and file(s) to copy
source_dir="/path/to/source_directory"
files_to_copy=("file1.txt" "file2.txt")  # Add or remove files as needed

# Define remote hosts and destination directories
remote_hosts=("user@host1:/path/to/destination_dir1" "user@host2:/path/to/destination_dir2")

# Loop through each remote host and copy files
for host_dir in "${remote_hosts[@]}"; do
    # Split the host_dir into host and directory parts
    IFS=':' read -r -a parts <<< "$host_dir"
    remote_host="${parts[0]}"
    remote_dir="${parts[1]}"
    
    # Copy files using rsync
    rsync -avz --progress "${source_dir}/" "${remote_host}:${remote_dir}/"
    
    # Check if rsync was successful
    if [ $? -eq 0 ]; then
        echo "Files copied successfully to $remote_host:$remote_dir"
    else
        echo "Failed to copy files to $remote_host:$remote_dir"
    fi
done
