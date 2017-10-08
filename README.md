# My scripts

### Scripts and usage
Please note that this is made on a Ubuntu machine, and other distros are not tested

#### clean
This script will clean the computer by running autoclean, autoremove
and clean trash folder
<br>Requires sudo to run, and user input whether to delete files/packages

**execute**: bash clean.sh

#### firewall
This script used the ufw firewall and takes an argument: on, off OR status
which either enable, disable or shows the status of the firewall.
It simple utilises the service system.
<br>Requires sudo

**execute**: bash firewall.sh on/off/status

#### hello
Simple script that displays a notification

**execute**: bash hello.sh

#### notebook
Note taking script for quick writing of notes.
notebook.sh can take 2 arguments for determining the location and filename
of the note to take
<br>The notebook adds timestamp for each new entry.

**execute**: bash notebook.sh
<br>open help with the "-h" argument

#### budget
Make a budget using this script
it adds a line to a csv file and calculates the amount

this is an examble showing 1 entry in it:<br>
Title,Amount,DayToPay,Company,Other<br>
Phone,120,1,Yousee,12345678<br>
TOTAL,120,TOTAL,TOTAL,TOTAL<br>

#### radio
Different radio stations to tune into
Takes radio station name as argument or defaults to nova

**execute**: bash radio.sh
 
#### scan
Scans for vira and rootkits using clamav and chkrootkit
can optionally take scan location as argument
defaults to root directory ( / ).
<br>Requires sudo

**execute**: bash scan.sh

#### update
Update packages by running this script
<br>Requires sudo

**execute**: bash update.sh

### Tip
1. Add script alias in .bash_aliases for easy access.
2. Make cron jobs to execute some commands at set time intervals, eg. daily/hourly/weekly <br>
To add cron job execute: crontab -e <br>
and add line like this at end of file: <br>
*/30  7-17  *    *  1-5 DISPLAY=:0 xterm -e "bash ~/Scripts/notebook.sh" <br>
which will call notebook.sh every 30th minute between 7 and 17 mon-fri
3. Alternative to "bash scriptname", make the script executable and use "./scriptname" instead
