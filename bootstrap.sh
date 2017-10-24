#!/bin/bash

for FILE in bash_profile gitconfig my.cnf gitignore_global
do
  rm -Rf "$HOME/.$FILE"
  ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
  echo
done

source ~/.bash_profile
