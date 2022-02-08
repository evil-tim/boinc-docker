#!/bin/bash

if [ -d "/home/ubuntu/boinc" ]; then
    cd /home/ubuntu/boinc
    /usr/local/bin/docker-compose down || true
fi