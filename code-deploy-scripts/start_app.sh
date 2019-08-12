#!/bin/bash

# configure ecr login
aws configure set region `curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/[a-z]$//'`
$(aws ecr get-login --no-include-email)

# start
cd /home/ubuntu/boinc
docker pull 535425158818.dkr.ecr.ap-southeast-1.amazonaws.com/boinc:latest
docker run \
    -d \
    --cpus $BOINC_CPU_LIMIT \
    -e "BOINC_URL=$BOINC_URL" \
    -e "BOINC_KEY=$BOINC_KEY" \
    --name boinc \
    535425158818.dkr.ecr.ap-southeast-1.amazonaws.com/boinc:latest
