#!/bin/bash
for testfile in $(ls tests); do
  ./closed-php.bash tests/$testfile
  closed=$?
  if [ $closed -eq 1 -a "true"  == ${testfile##*.} ] || 
     [ $closed -eq 0 -a "false" == ${testfile##*.} ]; then
    echo "[X] $testfile"
  else
    echo "[ ] $testfile"
  fi
done
