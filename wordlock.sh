#!/bin/bash

#this script generates all possible words for a 4-6 letter wordlock
#each ring represents all letters that can be used
#just reaplce the rings with letters from your wordlock to use
#to run: change ownership(make file executable) and run.
#chmod +x && ./wordlock and run

#CHANGE THESE LETTERS TO MATCH YOUR LOCK OTHERWISE WILL NOT GENERATE CORRECT WORDS
##ONLY CHANGE THE RINGS YOUR LOCK HAS, LEAVE REST AS IS

ring1='bsphmtwdlf'
ring2='yhnruoaile'
ring3='mlrtaosken'
ring4='snmpylkted'
ring5='asdfghjklq'
ring6='qwertyuiop'


#path to dictionary wordlist
wordlistPath='/usr/share/dict/words' || '/usr/share/dict/american-english'

if [[ -e $wordlistPath ]]
then

  echo ""
  echo "Generates all possible dictionary words for 4-6 letter Wordlock"
  echo "---------------------------------------------------------------"
  echo "Choose Wordlock: (Enter 4|5|6 or 1|2|3)"
  echo
  echo "[4] Letter Wordlock"
  echo "[5] Letter Wordlock"
  echo "[6] Letter Wordlock"
  echo ""
  echo "[q] Exit Program"
  echo

  read lock
else
  echo "Path to dictionary file doesn't exist. Please change wordListPath"
fi
 
case "$lock" in
  "4" | "1" )
  echo "4 Letter Worlock"
  egrep "^[$ring1][$ring2][$ring3][$ring4]$" $wordlistPath | cat -n
  ;;
  "5" | "2" )
  echo "5 Letter Wordlock"
  egrep "^[$ring1][$ring2][$ring3][$ring4][$ring5]$" $wordlistPath | cat -n
  ;;
  "6" | "3" )
  echo "6 Letter Wordlock"
  egrep "^[$ring1][$ring2][$ring3][$ring4][$ring5][$ring6]$" $wordlistPath | cat -n
  ;;
  "q" | "Q" | "c" | "C" | "e" | "E" )
  echo "Closing Program"
  exit
esac





