alias gd='git diff --color'
alias gdc='git diff --cached --color'
alias gs='git status'
alias up1='cd ..'
alias up2='cd ../../'
alias up3='cd ../../../'
alias x='exit'
alias h='history'
alias v='vim'
alias ll='ls -lG'

PS1='\u@\h[\w] $ '

if [[ "$OS" == "Windows_NT" ]]; then
  alias python='winpty python'
  alias ipython='winpty ipython'
fi
