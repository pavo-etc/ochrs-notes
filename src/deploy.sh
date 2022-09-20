#!/bin/bash
cd ../site/
git stash
git stash drop
git pull
cd ../src/
./batchVariants
./build.sh
echo "Uploading to webserver..."
#rsync -rvhP --inplace  --include=".htaccess" --exclude={'.*','src'} $HOME/projects/c/nchrs/ uberspace:html/
cd ../site/
git add -A
git commit -m "gh-pages deployment"
git push