all: README.md

README.md:
	echo "## Guessing Game" > README.md
	echo " " >> README.md	
	echo "This **makefile** was run at:" >> README.md
	date +"%D %T" >> README.md
	echo " " >> README.md
	echo "Script **guessinggame.sh** includes *28* lines" >> README.md	
