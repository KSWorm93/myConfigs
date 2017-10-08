#!/bin/bash
#################
#
# Budget list
#
#################

# Variables
directory=~/${2:-Documents/Budget}
fileName=${1:-budget}.csv
base=$directory/$fileName
date=`date '+%Y-%m-%d %H:%M:%S'`
first=false

# Create dir if not exist
mkdir -p $directory
# check if file exist
if [ ! -f $base ]; then
    first=true
    echo "Creating file"
    touch $base
    echo "Title,Amount,DayToPay,Company,Other" > $base
fi
# remove total amount from last line
if [ $first = false ] ; then
    head -n -1 $base > temp; mv temp $base
fi

clear

## normal entry
echo "Please add budget entry by filling the form"

# Write to txt file
echo "Title:"
read title
echo "Amount (DKK):"
read amount
echo "Monthly day to pay:"
read daytopay
echo "Company paying to:"
read company
echo "Other things to add:"
read other

clear

echo "You are done"
echo "Title   : $title"
echo "Amount  : $amount"
echo "Payday  : $daytopay"
echo "Company : $company"
echo "Other   : $other"

echo
read -r -p "Is this correct? [y/N] " response
response=${response,,}
if [[ "$response" =~ ^(yes|y| ) ]] || [[ -z $response ]];
then
    echo "Adding entry"
    echo "$title,$amount,$daytopay,$company,$other" >> $base
else
    echo "Not adding entry"
fi

echo
total=`awk -F"," '{s+=$2}END{print s}' $base`
echo "Total budget as it is now: $total DKK"

# always make new line in diary
echo "TOTAL,$total,TOTAL,TOTAL,TOTAL" >> $base