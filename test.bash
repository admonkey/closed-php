#!/bin/bash
for testfile in $(ls tests); do

  if [ "$1" == "-v" ]; then
    echo; echo
  fi

  ./closed-php.bash tests/$testfile "$1"
  closed=$?
  if [ $closed -eq 1 -a "true"  == ${testfile##*.} ] || 
     [ $closed -eq 0 -a "false" == ${testfile##*.} ]; then
    echo "[X] $testfile"
  else
    echo "[ ] $testfile"
  fi

done
