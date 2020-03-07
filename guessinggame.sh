function guessinggame {
	# Get number of files in current directory
	true_files=$(ls | wc -l)

	# Ask user to guess
	echo "How many files do you think there are in the current directory?"
	echo "Please write your answer as an integer (e.g '4')"
	read guess

	# Inform user if their guess is correct, too high, or too low
	while [[ $true_files -ne $guess ]]
	do
		if [[ $guess -lt $true_files ]]
		then
			echo "I am sorry, your number is smaller than the real thing...Please try again!"
			read guess
		elif [[ $guess -gt $true_files ]]
		then
			echo "I am sorry, your number is greater than the real thing...Please try again!"
			read guess
		fi
	done
	if [[ $true_files -eq $guess ]]
	then
		echo "Congratulations! Your guess '$guess' is correct."
	fi
}
guessinggame
