for file in PNLD*;
	do
		mv  $file ${file:0:8}-FRONT.pdf
	done