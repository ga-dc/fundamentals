#!/bin/bash

set -o errexit -o nounset

latest=`git rev-parse HEAD`
if [ -d dist ]; then
  rm -r dist
fi
mkdir dist
for tag in `git tag`; do
  mkdir dist/$tag
  git reset --hard $tag
  rm -r _book
  gitbook install > /dev/null
  gitbook build > /dev/null
  cp -r _book/* dist/$tag/
done;

cd dist
git init
git add .
git commit -m "built from $latest"
git push -f git@github.com:ga-dc/fundamentals.git master:gh-pages
git reset --hard $latest
