#!/bin/bash

total=$(cat *.csv | grep $1 | grep -o '[0-9]\+,[0-9]\+[0-9]\+ €"$' | sed 's/ €"//g' | sed 's/,/./g' | paste -sd+ | bc)

echo "Total pour le mois de $1 : $total€"
