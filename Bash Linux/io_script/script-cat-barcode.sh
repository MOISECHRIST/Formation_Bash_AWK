#!/bin/bash

#Ce script va concatener les barcodes par dossier
#Se placer dans le dosser fastq_pass
list_barcodes=$(ls)
echo "$list_barcodes"

for barcode in $list_barcodes
do

dir=$(dirname $barcode)
echo $dir

#zcat "$barcode"/* > "$barcode".fastq.gz

done
