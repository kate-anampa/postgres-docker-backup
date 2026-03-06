#!/bin/bash

cd /backups

ls -t | tail -n +2 | xargs rm -f