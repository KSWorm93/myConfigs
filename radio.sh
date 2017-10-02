#!/bin/bash
#################
#
# Radio script
#
#################

case ${1:-nova} in
	"nova") mplayer http://195.184.101.204/nova128
	;;
	"voice") mplayer http://stream.voice.dk/voice128
	;;
	"pop") mplayer http://stream.popfm.dk/pop128
	;;
	"soft") mplayer http://onair.100fmlive.dk/soft_live.mp3
	;;
	"retro") mplayer http://stream128.retro-radio.dk/retro
	;;
	"100") mplayer http://onair.100fmlive.dk:80/100fm_live.mp3
	;;
	"p3") mplayer http://live-icy.gss.dr.dk:80/A/A05H.mp3
	;;
	"p4") mplayer http://live-icy.gss.dr.dk:80/A/A08H.mp3
	;;
	"drnyheder") mplayer http://live-icy.gss.dr.dk:80/A/A02L.mp3
	;;
esac

