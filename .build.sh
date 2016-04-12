#!/bin/bash

set -o errexit -o nounset

latest=`git rev-parse HEAD`

if [ -d dist ]; then
  rm -r dist
fi
mkdir dist

for tag in `git ls-remote --heads origin  | sed 's?.*refs/heads/??'`; do
  if [ "$tag" != "gh-pages" ]; then
    mkdir dist/$tag
    echo "Building $tag"
    git reset --hard origin/$tag
    touch _book && rm -r _book
    gitbook install > /dev/null
    gitbook build > /dev/null
    cp -r _book/* dist/$tag/
  fi
done;

"
for tag in `git tag`; do
  mkdir dist/$tag
  git reset --hard $tag
  echo "Building $tag"
  touch _book && rm -r _book
  gitbook install > /dev/null
  gitbook build > /dev/null
  cp -r _book/* dist/$tag/
done;

echo "Building $tag"
touch _book && rm -r _book
gitbook install > /dev/null
gitbook build > /dev/null
cp -r _book/* dist/
"

git reset --hard $latest
