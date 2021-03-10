for dir in PNLD00[4-5][0-9]*;
	do
		echo $dir
		cd $dir
		mv PNLD00*pdf ..
		cd ..;
	done