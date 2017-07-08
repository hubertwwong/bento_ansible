#!/bin/bash

echo ">>> .bash_profile >"

if [ -f ~/.bashrc ]; then
	echo ">>> .bash_profile > sourcing bashrc"
  source ~/.bashrc
fi

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
