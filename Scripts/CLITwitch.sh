#!/bin/bash
#################
#
# Twitch
# Streaming
# From CLI
#
#################

# Get arguments and store them
clientId=$1
arg2=$2
listtouse=$3

# Help guide
if [ "$1" == "-h" ] || [ "$1" == "--help" ] || 
   [ "$2" == "-h" ] || [ "$2" == "--help" ] || 
   [ "$3" == "-h" ] || [ "$3" == "--help" ]; then
  echo "This is a simple program to watch streamers from twitch"
  echo "NOTE: you WILL need your own client id from twitch"
  echo "to check online status of streamers"
  echo 
  echo "Usage:"
  echo "bash CLITwitch.sh <client_id> arg2 arg3"
  echo
  echo "arg2 should be either -s / --status OR a streamer name"
  echo "arg3 will only be used in --status check"
  echo "and will check specific list, defaults to use all if its not set"
  echo
  echo "Arguments:"
  echo -e '\t-h, --help         :  show this help text'
  echo -e '\t-s, --status       :  check live status on streamer list'
  echo
  echo "Available lists to add as arg3"
  echo "all, aoe, lol, gw2, wc3, tol, other"
  exit 0
fi

# All streamers
all=(
	"t90official"
	"membtv"
	"tyrant_theviper"
	"gripex90"
	"cohhcarnage"
	"kylestreamsstuff"
	"phantaram"
	"gosu"
	"boxbox"
	"nightblue3"
	"maretti0"
	"riotgames"
	"zeroempires"
	"iamyaws"
	"kayotica"
	"yayitskate"
  	"anniebot"
  	"choxie808"
  	"mightyteapot"
  	"sizer2654"
  	"timthetatman"
)
# individual game streamers
declare -a aoe=('t90official' 'membtv' 'tyrant_theviper' 'zeroempires');
declare -a lol=('gripex90' 'boxbox' 'gosu' 'riotgames' 'nightblue3' 'anniebot');
declare -a gw2=('sizer2654' 'phantaram' 'yayitskate' 'choxie808' 'mightyteapot');
declare -a wc3=('iamyaws' 'kayotica');
declare -a tol=('kylestreamsstuff');
declare -a other=('cohncarnage' 'maretti0' 'timthetatman');

# Check $3 if it contains one of the lists - and set it if it does
case ${3:-all} in
  "all") streamerList=${all[@]}
  ;;
  "aoe") streamerList=${aoe[@]}
  ;;
  "lol") streamerList=${lol[@]}
  ;;
  "gw2") streamerList=${gw2[@]}
  ;;
  "wc3") streamerList=${wc3[@]}
  ;;
  "tol") streamerList=${tol[@]}
  ;;
  "other") streamerList=${other[@]}
  ;;
esac

# Check status of streamers
check_status () {
  echo "checking online status of streamers"
  echo
  for streamer in $streamerList
    do
 	    stream_id=`curl -s -H "Client-ID: $clientId" https://api.twitch.tv/kraken/streams/$streamer | jq -r '.stream._id'`
 	    game=`curl -ss -H "Client-ID: $clientId" https://api.twitch.tv/kraken/streams/$streamer | jq -r '.stream.game'`
 	    if [ "$stream_id" != "null" ]; 
 	      then
   	      echo "$streamer is online playing $game"
        else
          echo "$streamer is not online" 
   	  fi 
    done
  echo
  echo "done checking"
}

# Play streamer gotten from $2
play_streamer () {
	mpv https://www.twitch.tv/$arg2
}

# Check $2 for --status 
if [ $arg2 == '-s' ] || [ $arg2 == '--status' ];
  then
    check_status
  else
    play_streamer
fi

# List of curl commands used
#get all info about streamer
# curl -H "Client-ID: $cliendId" https://api.twitch.tv/kraken/streams/$streamer | jq -r '.stream'
#get streamed game
# curl -H "Client-ID: $cliendId" https://api.twitch.tv/kraken/streams/$streamer | jq -r '.stream.game'