#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)

pg_dump -h db -U admin mi_db > /backups/backup_$DATE.sql