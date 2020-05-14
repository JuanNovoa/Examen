#!/bin/sh

varieble=$1
for i in $(seq 2 $#)
do
	lineas=$(wc -l <$2) 
	for a in $(seq $lineas)
	do
		
		for x in $($variable)
		do
			if (! ping -c 1 $(awk "NR == $a" $2) > /dev/null 2>&1)
			then
				>&2 echo No existe: $(awk "NR == $a" $2)

			fi
		done	
	done

	for b in $a
	do
		if (! ping -c 1 $(awk "NR == $a" $2) > /dev/null 2>&1)
		then
			mv $2 $2".down"

		fi
	done	
	shift
done
		
		
	 
	

