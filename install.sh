#!/bin/bash

# if we are on MacOS, copy bash profile, since 
# this is read at the start of each shell
if [ $TERM_PROGRAM = "Apple_Terminal" ]
then
  cp bash_profile ~/.bash_profile
fi

cp bashrc ~/.bashrc
