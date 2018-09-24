if [ -r ~/.bash_aliases ]
then
  . ~/.bash_aliases
fi

if [ $TERM_PROGRAM = "Apple_Terminal" ]
then
  export PATH=/Users/chris/dev/flutter/bin:$PATH
fi
