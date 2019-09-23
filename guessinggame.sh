
function guessinggame {

	#finding the current directory
	currdir=$(pwd)

	#number of files in the directory
	numfiles=$(ls |wc -l)

	#asking about the number of files 
	echo "How many files are there in the current directory $currdir ?"

	echo "Take a guess!"

	#Getting the user input
	read userguess

	# if users guess is wrong
	while [[ $userguess -ne $numfiles ]]
	do
		if [[ $userguess -gt $numfiles ]]
		then
			echo "Your guess too high, Please try again!"
		elif [[ $username -lt $numfiles ]]
		then
			echo "Your guess is too low, Please try again!"
		fi
        	# reading the userguess again
		read userguess
	done

	# if users guess is right
	if [[ $userguess -eq $numfiles ]]
	then
		echo "Congratulations! you are right, there are $numfiles number of files. " 
	fi
}

guessinggame
