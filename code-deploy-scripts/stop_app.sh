#!/bin/bash

docker container stop boinc || true
docker container rm boinc || true
