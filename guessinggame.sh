#!/bin/bash

#function to play the game
function playGame()
{
	echo "Great! Now let's play the game..."
	echo "Please enter your guess (guess must be a postive ineger):"

	#read user input
	read guess
		
	#evalutating userGuess
	while [[ $guess -ne 4 || $guess -lt 0 ]]
		do
			echo "Sorry your guess is not right or invalid. Please enter your guess again (remember guess must be a postive integer):"
			read guess
		done
	#upon successful guess print congratulation message
	echo "Congratulation! Your guees is CORRECT!!!"

}

#function prompt defining
function prompt()
{
	echo "Hello,  Welcome to the Guessing Game! In this game you have to guess how many files in the current directory."
	echo "Are you ready to play the game?"
	echo "If yes, then type 'Y/y' and press EENTER; If no then type any other key expect Y/y and press ENTER" 

	#read user input
	read answer

	if [[ "$answer" = "Y"  || "$answer" = "y" ]]
	then
		#call the playGame method to play the game
		playGame
	else
		#if user decline to play, exit from the game with a exiting message
		echo "You've declined to play the game. Exiting from the game."
		exit
	fi
}
#prompt user for playing the game
prompt
