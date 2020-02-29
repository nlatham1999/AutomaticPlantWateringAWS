#!/bin/sh

#                        _       __               
#   ____ __      _______(_)___  / /_  ____  __  __
#  / __ `/ | /| / / ___/ / __ \/ __/ / __ \/ / / /
# / /_/ /| |/ |/ (__  ) / /_/ / /__ / /_/ / /_/ / 
# \__,_/ |__/|__/____/_/\____/\__(_) .___/\__, /  
#                                 /_/    /____/   

CERT="/home/pi/NickAWSKeys/1f3394fa8d-certificate.pem.crt"
CA="/home/pi/NickAWSKeys/AmazonRootCA1.pem "
PKEY="/home/pi/NickAWSKeys/1f3394fa8d-private.pem.key"
ENDPOINT="a1v235w5dvh412-ats.iot.us-west-2.amazonaws.com"
TOPIC="aws/things/SenseHat/shadow/update"

python3 awsiot.py \
	--rootCA $CA \
	--cert $CERT \
	--key $PKEY \
	--endpoint $ENDPOINT\
	 --topic $TOPIC
