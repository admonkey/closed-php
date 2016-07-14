#!/bin/bash
FILENAME="$1"
closed=false

# just checking the last 10 lines
# should be good enough for this example
for line in $(tail $FILENAME); do
  if [ "$line" == "?>" ]; then
    closed=true
  else
    closed=false
  fi
done

if $closed; then
  exit 1
else
  exit 0
fi
