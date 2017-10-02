#!/bin/bash
#################
#
# Notebook
#
#################

# Help guide
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  echo "A good tip is to call this script once a day, so you always remember to"
  echo "update your diary"
  echo eg. making a cron task by adding this:
  echo "*/30  7-17  *    *  1-5 DISPLAY=:0 xterm -e "bash ~/Scripts/notebook.sh""
  echo at the end of the file using crontab -e
  echo
  echo Arguments:
  echo -e '\t-h    :  show this help text'
  echo -e '\targ2  :  directory location - default: ~Documents/Notes/'
  echo -e '\targ1  :  filename           - default: note.txt'
  echo  
  echo -e '\teg:   :  ./notebook.sh note Notes'
  echo -e '\t\t will make a new note.txt in ~/Notes'
  exit 0
fi

# Variables
directory=~/${2:-Documents/Notes/}
fileName=${1:-note}.txt
base=$directory/$fileName
date=`date '+%Y-%m-%d %H:%M:%S'`

echo "Please write your entry"

# Create dir if not exist
mkdir -p $directory

# Write to txt file
echo $date >> $base
read input 
echo $input >> $base

# always make new line in diary
echo >> $base