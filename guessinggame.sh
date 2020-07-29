#!/usr/bin/env bash

echo "-------------------- Guessing Game -------------------"
function game {
	read -p "Guess the number of files in current directory: " guess
    files=$(ls -1 | wc -l)
}
game
while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
	    echo "That is way low. Try again. "
	else
	    echo "That is way high. Try again. "
	fi
	game
done
echo " "
echo "------------Congratulations------------"
echo "You did it!"
echo "Here are the files: " 
ls -1
