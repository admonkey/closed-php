#!/bin/bash
FILENAME="$1"

if [ "$2" == "-v" ]; then
  VERBOSE=true
else
  VERBOSE=false
fi

closed=false
for line in $(cat $FILENAME); do
  if $VERBOSE; then
    echo "$line"
  fi

  if [ "$line" == "?>" ]; then
    closed=true
    if $VERBOSE; then
      echo "CLOSED TAG"
    fi
  else
    closed=false
  fi
done

if $VERBOSE; then
  if $closed; then
    echo "RESULT CLOSED"
  else
    echo "RESULT OPEN"
  fi
fi

if $closed; then
  exit 0
else
  exit 1
fi
