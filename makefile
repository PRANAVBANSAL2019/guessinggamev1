
all: guessinggame.sh
	echo "## Guessing Game" >README.md
	echo "Last run:">>README.md
	date >> README.md
	echo "number of lines in code:" >>README.md
	cat guessinggame.sh |wc -l  >>README.md

