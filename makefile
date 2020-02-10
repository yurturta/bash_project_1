SHELL:=/bin/bash
all: README.md

README.md:guessinggame.sh
	echo "- bash_project_1" >> README.md
	echo "- $$(date)">>README.md
	echo "- $$(wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md

clean:
	rm README.md
