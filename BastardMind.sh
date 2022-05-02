#!/bin/bash

reason () {

for y in {0..16}
do
	state="Blue Green Yellow Red"
	for y in $state
	do
		echo $state
	done | sort -R | awk 'NR== 3; NR== 7; NR== 11; NR== 16 { print }'
done | sort -R | awk 'NR== 1; NR== 2; NR== 3; NR== 4 { print }'

}

a=$( reason )


b=$( echo $a | cut -d ' ' -f 4 )
c=$( echo $a | cut -d ' ' -f 1 )
d=$( echo $a | cut -d ' ' -f 2 )
e=$( echo $a | cut -d ' ' -f 3 )

f=$(( 4 + 9 ))

echo $b $c $d $e $f


if [ Blue == $b ]
then
	echo " Today Blue is b!! "
fi

