#!/bin/zsh

# Command to build the swift project to get all dependences and libary
echo "Starting instalation"

cd ~/Desktop/UriScrapping
xcodebuild -scheme ArgumentUri build

#chmod u+x ~/Desktop/UriScrapping/oie.txt

echo "alias dat=""\"rm /Users/Shared/Applications/oi.txt\"" >> ~/.zshrc
echo "alias at=""\"touch /Users/Shared/Applications/oi.txt\"" >> ~/.zshrc
echo "alias uri=""\"clear &&  /Users/Shared/Applications/ArgumentUri\"" >> ~/.zshrc
echo "if [ -e /Users/Shared/Applications/oi.txt ]" >> ~/.zshrc
echo "then" >> ~/.zshrc
echo        "alias switch=""\"dat\"" >> ~/.zshrc
echo        "uri" >> ~/.zshrc
echo "else" >> ~/.zshrc
echo        "alias switch=""\"at\"" >> ~/.zshrc
echo "fi" >> ~/.zshrc

