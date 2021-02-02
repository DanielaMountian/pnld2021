#!/bin/bash

cont=1
contB=1

for dic in `cat dic.pws`
do
echo "$contB..........................................................."
 	cont=`expr $cont + 1`
 	contB=`expr $contB + 1`
	echo $dic
	grep --color=auto -n -e "[^a-zA-ZÁ-Úá-ú]$dic$" -e "^$dic[^a-zA-ZÁ-Úá-ú]" -e "[^a-zA-ZÁ-Úá-ú]$dic[^a-zA-ZÁ-Úá-ú]" *.tex 

	if [ $cont = 10 ]; then
	read y
	cont=1
	fi
done



