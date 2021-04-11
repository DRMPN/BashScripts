#!/usr/bin/env bash

# VARs:
n=0					#number of runs
G=$(tput setaf 2) 		#green color
R=$(tput setaf 1) 		#red color
P=$(tput setaf 125) 	#purple color
N=$(tput sgr0)		#normal color

# MAIN:

# make temporary files
mkdir temp
touch temp/{stdout,stderr}.tmp

while [[ $? -ne 1 ]]
do
	(( n++ ))
	./"$1" >> temp/stdout.tmp 2>> temp/stderr.tmp
done

printf "\nStandart output:\n${G}"
cat temp/stdout.tmp

printf "${N}\nError output:\n${R}"
cat temp/stderr.tmp

printf "${N}\nNumber of runs until fail: ${P}$n\n${N}"

rm -r temp