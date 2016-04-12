#!/bin/bash

latest=`git rev-parse HEAD`

if [ -d dist ]; then
  rm -r dist
fi
mkdir dist
tags=`git tag`

"
for tag in `git ls-remote --heads origin  | sed 's?.*refs/heads/??'`; do
  if [ "$tag" != "gh-pages" ]; then
    mkdir dist/$tag
    echo "Building $tag"
    git reset --hard origin/$tag
    touch _book && rm -r _book
    gitbook install
    gitbook build
    cp -r _book/* dist/$tag/
  fi
done;
"

ls dist/

for tag in $tags; do
  mkdir dist/$tag
  git reset --hard $tag
  echo "Building $tag"
  touch _book && rm -r _book
  gitbook install > /dev/null && gitbook build > /dev/null && cp -r _book/* dist/$tag/
done;

git reset --hard $latest

echo "Building $latest"
touch _book && rm -r _book
gitbook install > /dev/null
gitbook build > /dev/null
cp -r _book/* dist/
