
for file in *.pdf; do
	echo $file
	NAME=`echo "$file" | cut -d'.' -f1`
	echo $NAME
	pdftoppm $file $NAME -png -r 300;
done