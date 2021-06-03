#!/usr/bin/env bash

Help() {
  echo "Installs the .bashrc, .bash_profile, and .bash_aliases files"
  echo
  echo "Syntax: install.sh [-a|p|r]"
  echo
  echo "Options:"
  echo
  echo "  -a, --aliases-only      Install only the .bash_aliases file"
  echo "  -p, --profile-only      Install only the .bash_profile file"
  echo "  -a, --bashrc-only       Install only the .bashrc file"

}

inst_rc=1
inst_aliases=1
inst_profile=1

while [[ $# -gt 0 ]]
do
  key=$1
  case $key in
    -h|--help)
      echo "Help not available"
      exit 0
      ;;
    -a|--aliases-only)
      inst_rc=0
      inst_profile=0
      ;;
    -p|--profile-only)
      inst_aliases=0
      inst_bashrc=0
      ;;
    -r|--bashrc-only)
      inst_aliases=0
      inst_profile=0
      ;;
  esac
  shift
done

backup=~/.bash_bak

if [[ -d $backup ]] && [[ -w $backup ]]
then
  rm -rf $backup
fi

mkdir $backup
if [[ -d $backup ]]
then
  if [[ (($inst_bashrc == 1)) ]]
  then
    if [[ -f ~/.bashrc ]]
    then
      mv ~/.bashrc $backup
    fi
    cp bashrc ~/.bashrc
  fi

  if [[ (($inst_aliases == 1)) ]]
  then
    if [[ -f ~/.bash_aliases ]]
    then
      mv ~/.bash_aliases $backup
    fi
    cp bash_aliases ~/.bash_aliases
  fi

  if [[ (($inst_profile == 1)) ]]
  then
    if [[ -f ~/.bash_profile ]]
    then
      mv ~/.bash_profile $backup
      cp bash_profile ~/.bash_profile
    fi
  fi

fi
