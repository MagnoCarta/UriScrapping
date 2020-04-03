#!/bin/zsh

# Command to build the swift project to get all dependences and libary
echo "Starting instalation"

cd ~/Desktop/UriScrapping
xcodebuild -scheme ArgumentUri build


`cat ~/Desktop/UriScrapping/oie.txt` >> ~/.zshrc
