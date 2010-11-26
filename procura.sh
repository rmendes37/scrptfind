#!/bin/bash
#arquivo com entradas a serem procuradas
a1=MAC19.0.2
#arquivo para ser procurado
a2=dhcpd3.conf

> stdout.txt

l1=`cat $a1`

dado=""
for a in $l1
do
  dado=`grep $a $a2`
  if [ "$dado" != "" ]
    then
      echo $dado >> stdout.txt
  fi
done
