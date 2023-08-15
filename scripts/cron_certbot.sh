#!/bin/bash

# Define the cron schedule for every Monday at midnight
cron_schedule="0 0 * * 1"

command="certbot renew --post-hook 'systemctl reload nginx'"

echo "$cron_schedule $command" | crontab -
