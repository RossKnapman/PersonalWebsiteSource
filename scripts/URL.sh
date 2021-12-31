#!/bin/bash

#####################################################
# Take list of URLs and format for photography blog #
#####################################################

file="urls.txt"

rm figures.txt

while read p; do
	echo "<figure>" >> figures.txt
	echo -e "\t<img src=$p style=\"width:75%\" />" >> figures.txt
	echo -e "\t<figcaption>" >> figures.txt
	echo -e "\t\t<h4></h4>" >> figures.txt
	echo -e "\t\t<i data-feather=\"map-pin\"></i> &nbsp <i data-feather=\"calendar\"></i> &nbsp <i data-feather=\"aperture\"></i> ƒ/ &nbsp <i data-feather=\"clock\"></i> &nbsp <img src="https://img.icons8.com/material-outlined/24/000000/focal-length.png"/> mm &nbsp <img src="https://img.icons8.com/material-outlined/24/000000/iso.png"/> " >> figures.txt
	echo -e "\t</figcaption>" >> figures.txt
	echo -e "</figure>\n" >> figures.txt
done < $file
