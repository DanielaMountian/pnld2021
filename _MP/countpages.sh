for file in *.pdf; do
	echo $file
	pdftk $file dump_data | grep NumberOfPages;
	done