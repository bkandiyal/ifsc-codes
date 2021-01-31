#!/bin/bash

if ! python -c "import pandas"
then
	echo "Pandas is not installed...installing..."
	pip install pandas openpyxl xlrd
fi

echo "Downloading file..."
#curl -O https://rbidocs.rbi.org.in/rdocs/content/docs/68774.xlsx

ls

echo "Converting to CSV..."
python ./convert-to-csv.py

echo "Compressing file..."
tar cjf IFSC.tbz2 IFSC.csv

echo "Cleaning up files..."
rm 68774.xlsx

echo "Done"
