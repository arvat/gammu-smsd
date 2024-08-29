#!/bin/sh

PROGRAM=/bin/wget
for i in `seq $SMS_MESSAGES` ; do
    eval "$PROGRAM https://DOMAIN/?sms=\"\${SMS_${i}_NUMBER}\"-\"\${SMS_${i}_TEXT}\""
done
