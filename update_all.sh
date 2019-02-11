#! /bin/bash

for i in $(ls -d */); do
	cd $i
	echo "--------------------------------------------------------"
	pwd
	if [ -d ".git" ]; then
		git status && git pull
	fi
	if [ -d ".hg" ]; then
		hg status && hg pull && hg update
	fi
	cd ..
done
