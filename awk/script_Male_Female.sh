#!/bin/bash

#This script count the number of male and female 

tail -n+2 data/ObesityDataSet.csv | awk -F "," '
BEGIN {nb_male=0; nb_female=0};
{if($1=="Male") nb_male+=1; else if($1 == "Female") nb_female+=1};
END {print "-> Number of male : "nb_male"\n-> Number of female : "nb_female; if(nb_male>0) print "\n-> Sexe Ratio : "nb_female/nb_male}'  
