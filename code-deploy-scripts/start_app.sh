#!/bin/bash

# configure ecr login
aws configure set region `curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/[a-z]$//'`
$(aws ecr get-login --no-include-email)

# start
cd /home/ubuntu/boinc
/usr/local/bin/docker-compose pull
/usr/local/bin/docker-compose up -d    
    