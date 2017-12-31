#!/bin/bash

echo ">>> .bashrc >"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi