# Coloque aqui o nome do arquivo
i=Athayde.pdf  

mkdir esq
rm ./esq/* -Rf
mkdir dir
rm ./dir/* -Rf

echo "cropando esquerda..."

# Coloque aqui as medidas X Y W Z, sendo X a margem esquerda, Y a superior e assim por diante
pdfcrop --margin '-10 -15 -10 -25' $i ./esq/$i 

# Idem para a direita
echo "cropando direita..."
pdfcrop --margin '-15 -15 -10 -25' $i ./dir/$i

echo "spliting files"
cd esq
pdftk $i burst
cd ../dir
pdftk $i burst

c=0

str=""

for x in `ls pg_*`;
do
    test=$(( $c % 2 ))
    if [ $test -ne 0 ];
    then
      str=$str" ./esq/$x"
    else
      str=$str" ./dir/$x"
    fi
c=$((c+1))
done

cd ..

echo "gerando pdf final"
pdftk $str cat output crop_$i
