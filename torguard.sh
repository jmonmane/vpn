#!/bin/bash

a=`curl -s ident.me`
notify-send "IP Address is: $a"

function checkResolver {
funcAddress=`curl -s ident.me`
fileSize=`ls -l /etc/resolv.conf | awk '{print $5}'`
while [ $fileSize -eq `ls -l /etc/resolv.conf | awk '{print $5}'` ]
do
:
done
notify-send "VPN Status Changed!! "
while 
[ $funcAddress == `curl -s ident.me` ]
do
:
done
sleep 2
getAddress
}

function getAddress {
address=`curl -s ident.me`
notify-send "New Address: $address"
checkResolver
}

checkResolver
notify-send "VPN Status Changed!! "
getAddress
notify-send "New Address: $address"
checkResolver
