FROM ubuntu:latest

RUN apt-get update && apt-get install -y boinc-client
WORKDIR /var/lib/boinc-client
CMD /etc/init.d/boinc-client start; sleep 5; /usr/bin/boinccmd --join_acct_mgr  ${BOINC_ACC_MGR} ${BOINC_USER} ${BOINC_PASS}; tail -f /var/lib/boinc-client/std*.txt
