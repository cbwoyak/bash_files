#!/bin/bash

while [[ $# -gt 0 ]]
do
  key=$1
  case $key in
    -h|--help)
      echo "Help not available"
      exit 0
      ;;
  esac
done

# if we are on MacOS, copy bash profile, since 
# this is read at the start of each shell
if [ $TERM_PROGRAM ] && [ $TERM_PROGRAM = "Apple_Terminal" ]
then
  cp bash_profile ~/.bash_profile
elif [[ ! -e ~/.bash_profile ]]
then
  cp bash_profile ~/.bash_profile
fi

cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases
