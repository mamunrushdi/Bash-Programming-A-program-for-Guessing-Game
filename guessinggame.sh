#!/bin/bash

#read the total file number of the current direcitory
fileNumber=`ls | wc -l`

function playGame()
{
	echo "Welcome to the Guessing Game! In this game you have to guess how many files in the current directory."
	echo "Please enter your guess (guess must be a postive ineger):"

	#read user input
	read guess

	#evalutating userGuess
	while [[ $guess -ne $fileNumber ]]
		do
			if [[ $guess -gt $fileNumber ]]
			then
				echo "Your guess is to high."
			elif [[ $guess -lt $fileNumber ]]
			then
				echo "Sorry your guess is too low."
			fi

			echo "Please enter your guess again (remember guess must be a postive integer):" 
			read guess
		done
	#upon successful guess print congratulation message
	echo "Congratulation! Your guees is CORRECT!!!"
}

#prompt user for playing the game
playGame
