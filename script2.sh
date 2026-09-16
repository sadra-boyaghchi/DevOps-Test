#! /bin/bash

DATE=`date +%Y%m%d`
OUTPUT="/home/sadra/khouruji_${DATE}_${HOSTNAME}.log"

read -p "enter 1st number: " VAR1

read -p "enter 2nd number: " VAR2

VAR3=`echo "$VAR1 * $VAR2" | bc`

if [ $VAR1  >  $VAR2 ]
then

	VAR4=`echo "scale=6; $VAR1 / $VAR2" | bc`

else
	VAR4=`echo "scale=6; $VAR2 / $VAR1" | bc`

fi

echo "natije zarb are $VAR3" |tee $OUTPUT 

echo "natije tags are $VAR4" |tee -a $OUTPUT
