#!/bin/bash

set -o errexit -o nounset

latest=`git rev-parse HEAD`
if [-d dist] then
  rm -r dist
fi
mkdir dist
for tag in `git tag`; do
  mkdir dist/$tag
  git reset --hard $tag
  gitbook install
  gitbook build
  rm -r _book
  cp -r _book/* dist/$tag/
  git reset --hard $latest
  cd dist
  git init
  git add .
  git commit -m "built from $latest"
  git push -f origin gh-pages
done;
