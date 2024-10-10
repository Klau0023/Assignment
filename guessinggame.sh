#!/usr/bin/env bash

files=$(ls | wc -l)

function ask {
	echo "How many files are in the current directory?"
}

ask

while [[ $guess -ne $files ]]
do
	echo "Enter your guess, then press Enter:"
	read guess
	if [[ $guess -lt $files ]]
	then
		echo "There are more than $guess files. Please try again."
	elif [[ $guess -gt $files ]]
	then
		echo "There are less than $guess files. Please try again."
	else
		echo "You are correct!"
	fi
done
