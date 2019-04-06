if [ -r ~/.bash_aliases ]
then
  . ~/.bash_aliases
fi

# Add flutter install dir to path
if [ $TERM_PROGRAM ] && [ $TERM_PROGRAM = "Apple_Terminal" ]
then
  export FLUTTER_BIN=/Users/chris/dev/flutter/bin
  export PATH=$FLUTTER_BIN:$PATH
fi

if [[ -d ~/.pyenv ]]; then
  eval "$(pyenv init -)"
fi
