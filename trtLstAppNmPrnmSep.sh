for g in *.csv ;do echo -e "\n \n  $g">>listecomp.csv; cat $g>>listecomp.csv; done

sed  -e 's/^\"\w*/&";"/g'  listecomp.csv >> listecompmod1.csv

rm listecomp.csv

sed  -e 's/Élève/Nom/g'  listecompmod1.csv >> listecompmod2.csv

rm listecompmod1.csv

sed  -e 's/Nom;/&Prénom/g'  listecompmod2.csv >> listecompmod3.csv

rm listecompmod2.csv
