#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

if [ -f ~/.bashrc ]
then
  echo "Sourcing bash_aliases file $SCRIPT_DIR/bash_aliases"
  echo "source -q $SCRIPT_DIR/bash_aliases" >> ~/.bashrc
  exit 0
else
  echo "No bashrc located in $HOME"
  exit -1
fi
