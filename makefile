#!/bin/bash 

README.md:
	touch README.md
	echo "# Suresh Muralidharan\n" > README.md
	echo "- Project Name: Unix Workbench Assignment" >> README.md
	echo "- The make file was created on `date +'%A %F %T'`" >> README.md
	echo "- The guessinggame code contains `wc -l guessinggame.sh | cut -d' ' -f1` lines\n" >> README.md  

	echo "Here is the GitHub page site for this project. [Click here](https://itsuresh81.github.io/repo-assignment/)" >> README.md
