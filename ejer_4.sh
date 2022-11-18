#!/bin/bash/

#Para ir viendo como va actuando el script
#set -x

#Almaceno la palabra introducida
busqueda="$*"

#Creo un archivo con la pagina web
curl -o pagina.txt https://www.diariodeburgos.es/

#contabilizar el numero de pabras que esta repetidas
grep -o -i "$busqueda" pagina.txt | wc -l>numero.txt

#Almaceno el numero de palabras como variable
num=$(cat numero.txt)

grep -n -o "$busqueda" pagina.txt >lineas.txt
head -c 2 lineas.txt > prim_lin.txt 
num_lin=$(cat prim_lin.txt)

#Condicional
if [ $num == 0 ]
then
 echo "No se ha encontrado la palabra " "$busqueda"
elif [ $num == 1 ]
 then	
 echo "La palabra ""$busqueda" "aparece solo" "$num" "vez" 
 echo "Aparece unicamente en la línea" "$num_lin"
else    	
 echo "La palabra ""$busqueda" "aparece" "$num" "veces"
fi

