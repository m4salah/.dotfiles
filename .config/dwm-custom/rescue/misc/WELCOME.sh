#!/bin/sh

install () {
	dwm-custom-build -D
	echo
	echo 'Please press ENTER once you checked the INSTALL STATUS'
	read -r ANSWER	# answer ignored
	clear
	cat POSTINSTALL
	read -r ANSWER
	case $ANSWER in
		[yY]) exit 0 ;;	
	esac
}

### MAIN
cat INTRO
INC=0
while [ $INC -lt 3 ]; do
	read -r ANSWER
	case $ANSWER in
		[Yy]) install; INC=3 ;;
		[Nn]) break ;;
		*)    echo 'expected answer: Y or N'
	esac
	INC=$((INC+1))
done
clear
cat OUTRO
read -r ANSWER	# answer ignored
