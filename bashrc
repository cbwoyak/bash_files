if [ -r ~/.bash_aliases ]
then
  . ~/.bash_aliases
fi

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0333333" #black {40, 00:30?} [background]
  echo -en "\e]P1993333" #red {00:31,41}[SETUID (/usr/bin/sudo)]
  echo -en "\e]P2339933" #green {00:32, 42} [?]
  echo -en "\e]P3999933" #yellow {00:33} [?]
  echo -en "\e]P433CCFF" #blue {00:34} [?]
  echo -en "\e]P5FF99FF" #magenta {00:35} [?]A
  echo -en "\e]P600CCCC" #cyan {00:36} [Audio]
  echo -en "\e]P7AAAAAA" #white {00:37}[foreground]
  echo -en "\e]P8000000" #bright black {01:30} [?]
  echo -en "\e]P9CC3333" #bright red {01:31} [Archives]
  echo -en "\e]PA33FF33" #bright green {01:32} [Executables]
  echo -en "\e]PBFFFF33" #bright yellow {01:33} [Block devices]
  echo -en "\e]PC99CCFF" #bright blue {01:34} [Directories]
  echo -en "\e]PDFF33FF" #bright magenta {01:35} [Images, Video]
  echo -en "\e]PE99FFFF" #bright cyan {01:36} [Softlinks]
  echo -en "\e]PFCCCCCC" #bright white {01:37} [?]
  clear #for background artifacting
fi
