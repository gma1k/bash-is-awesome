#!/bin/bash

name="John"
greet() {
  local message="Hello, $1!"
  echo "$message"
  return 0

if [ "$name" == "John" ]; then
  output=$(greet "$name")
  echo "$output"
else
  echo "Unknown name"
fi

for file in *.txt; do
  base=${file%.txt}
  echo "The base name of $file is $base"
done

count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$((count + 1))
done

read -p "Enter your choice (a/b/c): " choice
case $choice in
  a) echo "You chose option A";;
  b) echo "You chose option B";;
  c) echo "You chose option C";;
  *) echo "Invalid choice";;
esac

set -e
trap 'echo "An error occurred!"' ERR
false
