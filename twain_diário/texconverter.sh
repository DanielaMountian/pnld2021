

rename s/\ /_/g *

unoconv -l &


#for file in `ls *.doc`; do
#    doc2odt $file
#    echo $file "-> odt"
#    done

for file in `ls *.odt`; do
    w2l -use_color="false" -use_colortbl="false" -multilingual="false" -formatting="ignore_most" -inputencoding="utf8" $file
    echo $file "-> tex"
    done
