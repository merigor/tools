#! /bin/bash

# cleanup: removes all "less relevant" folders and files from development code

find . -type f -name "Thumbs.db" -delete
find . -type f -name ".classpath" -delete
find . -type f -name ".project" -delete
find . -type f -name ".cdtproject" -delete
find . -type f -name ".cproject" -delete
find . -type f -name ".umlproject" -delete
find . -type f -name ".modell" -delete
find . -type f -name ".version" -delete
find . -type f -name ".htaccess" -delete
find . -type f -name ".DS_*" -delete
find . -type f -name ".cvsignore" -delete
find . -type f -name ".svnignore" -delete
find . -type f -name ".gitignore" -delete
find . -type f -name ".hgignore" -delete
find . -name ".metadata" -type d -print0|xargs -0 rm -r --
find . -name ".settings" -type d -print0|xargs -0 rm -r --
find . -name ".svn" -type d -print0|xargs -0 rm -r --
find . -name ".CVS" -type d -print0|xargs -0 rm -r --
find . -name ".bzr" -type d -print0|xargs -0 rm -r --
find . -name ".git" -type d -print0|xargs -0 rm -r --
find . -name ".hg" -type d -print0|xargs -0 rm -r --
find . -type d -empty -delete
