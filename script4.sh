#!/bin/bash

read -p "Enter an ip: " MYIP

ping -c 2 $MYIP > /dev/null

if [ $? -eq 0 ]
then
	echo "Its Ok"
else 
	echo "Its Not OK!"
fi
