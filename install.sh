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

backup=~/.bash_bak

if [[ -d $backup ]] && [[ -w $backup ]]
then
  rm -rf $backup
fi

mkdir $backup
if [[ -d $backup ]]
then
  if [[ -f ~/.bashrc ]]
  then
    mv ~/.bashrc $backup
  fi

  if [[ -f ~/.bash_aliases ]]
  then
    mv ~/.bash_aliases $backup
  fi

  if [[ -f ~/.bash_profile ]]
  then
    mv ~/.bash_profile $backup
  fi

  cp bashrc ~/.bashrc
  cp bash_aliases ~/.bash_aliases
  cp bash_profile ~/.bash_profile
fi
