#!/bin/bash
# Run kbackup with specified profile in background.
# To be executed as a cron task.

# 1. Create filename from current date and time.
# 2. Backup using profile and redirect stdout and stderr to said file.
filedate=$(date +%Y%m%d-%H%M)
filename="/home/pi/KBackup/Logs/"$filedate".log"
kbackup --verbose --autobg /home/pi/KBackup/Profiles/profile.kbp &> $filename

# 3. Sync backup drive with cloud storage (Mega)
rclone sync /mnt/BackupDrive/ Mega_Crypted:/