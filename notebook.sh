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
  echo "*/30  7-17  *    *  1-5 DISPLAY=:0 xterm -e "bash ~/Scripts/diary.sh""
  echo at the end of the file using crontab -e
  echo
  echo Arguments:
  echo -e '\t-h    :  show this help text'
  echo -e '\targ1  :  directory location - default: ~Documents/Notes/'
  echo -e '\targ2  :  filename           - default: note.txt'
  exit 0
fi

# Variables
directory=~/${1:-Documents/Notes/}
fileName=${2:-note}.txt
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