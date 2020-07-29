all: README.md

README.md: guessinggame.sh
	echo "The Unix Workbench Peer Graded Assignment" > README.md
	echo "\nMake date: " >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh: " >> README.md
	grep -c '' guessinggame.sh >> README.md
