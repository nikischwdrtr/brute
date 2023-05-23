#!/bin/bash
for i in {0000..9999}; do
  if ! (( `expr $i + 1` % 5 )); then
    echo "hallo"
  else
    echo "dini"
  fi
done