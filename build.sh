#!/bin/zsh

source ~/.nvm/nvm.sh
nvm use v0.4.12 

coffee -b -c Resources/windows/
coffee -b -c Resources/app.coffee

