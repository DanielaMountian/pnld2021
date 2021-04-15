for l in */
  do
    sed -i 's/Livro do Professor/Manual do Professor/g' $l"fronthedra.tex" | grep Professor
  done
