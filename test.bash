#!/bin/bash
for testfile in $(ls tests); do

  if [ "$1" == "-v" ]; then
    echo; echo
    echo '==============TEST========================='
    cat tests/$testfile
    echo '==========================================='
  fi

  # lint php test for syntax errors
  php -l tests/$testfile > /dev/null

  php closed-php.php tests/$testfile
  actual=$?
  tmp=${testfile%%.php}
  expected=${tmp##*.}
  if [ $actual -eq 1 -a "open"   == $expected ] || 
     [ $actual -eq 0 -a "closed" == $expected ]; then
    echo "[X] $testfile"
  else
    echo "[ ] $testfile"
  fi

done
