#!/bin/bash


while [ -z $MYOS ]
do
	
	read -p "whats your favorite Os? " MYOS
done	
	
MYOS=`echo $MYOS | tr -d [:digit:] | tr -d [:space:] | tr [:upper:] [:lower:]`


if [ $MYOS = "linux" ] 
then
	echo "Im happy for you"


elif [ $MYOS = "windows" ]
then
		echo "Its better to try linux for better experience"

elif [ $MYOS = "mac" ];then echo "you are chossy"

else
		echo "Im sorry for you ...."
fi
