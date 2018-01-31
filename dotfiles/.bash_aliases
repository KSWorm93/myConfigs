alias sizeDir="du -hsc $PWD/*"

# Open current folder or inputted folder
open(){
echo "Opening ${1:-.}"
	thunar ${1:-.}
}

alias youtubePlayer="mpsyt"
alias twitch="bash ~/LinuxConfigs/Scripts/CLITwitch.sh addownkeyhere"
alias incognito="sensible-browser --incognito"

#Fun :P
alias vidplay="mplayer -vo caca $1"

#alias for custom scripts / programs
alias update="bash ~/LinuxConfigs/Scripts/update.sh"
alias clean="bash ~/LinuxConfigs/Scripts/clean.sh"
alias scan="bash ~/LinuxConfigs/Scripts/scan.sh"
alias radio="bash ~/LinuxConfigs/Scripts/radio.sh"
alias firewall="bash ~/LinuxConfigs/Scripts/firewall.sh"
alias note="bash ~/LinuxConfigs/Scripts/notebook.sh"
alias budget="bash ~/LinuxConfigs/Scripts/budget.sh"
