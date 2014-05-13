#!/bin/bash
LOG=/tmp/squid_ip.log
echo ""
echo "LOGING SQUID for this IP"
echo ""
echo "logging $1"
echo ""
echo ""
echo ""
echo ""

tail -f /var/log/squid/access.log | grep -i $1 | awk '{print $7}' | tr '/' ' ' | awk  '{print $2}' | tee $LOG
cat $LOG | sort | uniq -c
echo "Output /tmp/squid.log"
exit 0
