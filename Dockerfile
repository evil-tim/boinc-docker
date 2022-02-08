FROM ubuntu:latest

RUN apt-get update && apt-get install -y boinc-client
WORKDIR /var/lib/boinc-client
CMD /etc/init.d/boinc-client start; sleep 5; /usr/bin/boinccmd --project_attach ${BOINC_URL} ${BOINC_KEY}; tail -f /var/lib/boinc-client/std*.txt
