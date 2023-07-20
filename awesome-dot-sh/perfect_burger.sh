#!/bin/bash


pick_option() {
  options=(
    "The meat should be ground beef with a fat content of at least 18%, preferably freshly ground or even home-ground for maximum flavor and tenderness."
    "The cheese should be American cheese, or another type that melts well and complements the beef flavor."
    "The bun should be a soft and squishy burger or potato roll, lightly toasted with some mayonnaise on the cut sides for extra crispiness and flavor."
    "The toppings should be simple and fresh, such as lettuce, tomato, onion, pickle, ketchup, mustard, and mayonnaise."
  )
  index=$((RANDOM % ${#options[@]}))
  echo "${options[$index]}"
}

echo "Hello, friend!"
echo "Are you feeling hungry today? Do you want to make the perfect burger?"
echo
echo "What element of the burger do you want to define?"
echo
echo "1) The meat"
echo "2) The cheese"
echo "3) The bun"
echo "4) The toppings"
echo
echo "Enter your choice (1/2/3/4): "
read choice
set -e
trap 'echo "An error occurred!"' ERR

case $choice in
  1) echo "You want to define the meat. Here is one option:";;
  2) echo "You want to define the cheese. Here is one option:";;
  3) echo "You want to define the bun. Here is one option:";;
  4) echo "You want to define the toppings. Here is one option:";;
  *) echo "Invalid choice, but I'll pick something for you anyway."
     echo "Here is one option:";;
esac

pick_option

echo
echo "I hope this helps you make the perfect burger."
echo "Bon appetit!"
