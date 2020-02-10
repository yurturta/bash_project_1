all: README.md

README.md:
	echo "Bash, Make, Git and Github" >> README.md
	date>>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
