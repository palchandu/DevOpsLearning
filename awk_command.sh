#!/bin/bash

##################################### AWK Command ##########################


echo "Reading file"
cat employee_sales.txt
echo "Print all file"
awk '/manager/  {print}' employee_sales.txt
echo "Print selected column"
awk '{print $1,$4}' employee_sales.txt


