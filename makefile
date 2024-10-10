all: README.md

README.md: guessinggame.sh
	echo 'Bash, Make, Git, and GitHub Assignment'>readme.md
	echo 'Created:'>>readme.md
	date>>readme.md
	echo 'Number of lines in guessinggame.sh'>>readme.md
	cat guessinggame.sh | wc -l>>readme.md

