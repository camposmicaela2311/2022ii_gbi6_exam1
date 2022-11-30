###Numero de regitos d cada bacteria
tail -n +2 ../data/grampa.csv | cut -d "," -f 2 | sort | uniq -c | sort  >>../data/bacteria.csv
###Numero de especia mas alto
echo "Conteo y especie mas alto" >> ../data/bacteria.csv
tail -n +2 ../data/grampa.csv | cut -d "," -f 2 | grep "E. coli" | uniq -c >> ../data/bacteria.csv
#NUmero de especies mas bajo
echo "Conteo my especie mas bajo" >> ../data/bacteria.csv
tail -n +2 ../data/grampa.csv | cut -d "," -f 2 | grep "A. favus" | sort | uniq -c >> ../data/bacteria.csv

