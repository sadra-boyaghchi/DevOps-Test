#!/bin/bash


DATE=`date +%Y%m%d`
OUTPUT="/home/sadra/output_${DATE}_${HOSTNAME}.log"

read -p "whats your name: " MYNAME

echo "you are $MYNAME " | tee  $OUTPUT

read -p "and How Old Are You?" MYAGE

echo "you are $MYAGE years old" | tee -a $OUTPUT
