for i in *.ps; do 
     ps2pdf $i
   done

for i in *.pdf; do
   pdfcrop $i A_$i  
   mv A\_$i $i
  done

rm *.ps

pdftk *.pdf output labels.pdf

mv PNLD*.pdf pdfs