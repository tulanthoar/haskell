#!/bin/zsh
for i in `seq 1 1000`; do
  echo $(xclip -o -sel prim | sed 's/.\{1\}/& /g'| tac - | rev ) > /dev/null
done
