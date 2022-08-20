#!/bin/bash
./batchVariants
./build.sh
echo "Uploading to webserver..."
#rsync -rvhP --inplace  --include=".htaccess" --exclude={'.*','src'} $HOME/projects/c/nchrs/ uberspace:html/
cd ../site/
git add -A
git commit -m "gh-pages deployment"