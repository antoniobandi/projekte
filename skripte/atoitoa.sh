#!/bin/bash
#Prvi argument je za funkciju atoi, a drugi za itoa
#Funkcija atoi
let string=$1
let len=$((${#string} - 1))
let rez=0
for (( i=0; i<=len; i++ ))
do
   let a=${string:$i:1}
   let rez+=$(($a*(10**($len-$i))))
done
echo "Vaš broj je $rez"

#Funkcija itoa
let broj=$2
let pom=$broj
#broj znamenki n
let n=0
while [ $pom -gt 1 ]
do
   let pom=$(($pom/10))
   let n++
done
#pretvaranje broja u string
for (( i=0; i<=n; i++ ))
do
   s=$(($broj%10))${s}
   let broj=$((broj/10)) 
done
echo "Vaš string je" $s
   
