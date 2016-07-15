#!/bin/bash
for testfile in $(ls tests); do

  if [ "$1" == "-v" ]; then
    echo; echo
  fi

  ./closed-php.bash tests/$testfile "$1"
  actual=$?
  tmp=${testfile%%.php}
  expected=${tmp##*.}
  if [ $actual -eq 1 -a "true"  == $expected ] || 
     [ $actual -eq 0 -a "false" == $expected ]; then
    echo "[X] $testfile"
  else
    echo "[ ] $testfile"
  fi

done
