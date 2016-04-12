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
  echo "Building $tag"
  touch _book && rm -r _book
  gitbook install > /dev/null
  gitbook build > /dev/null
  cp -r _book/* dist/$tag/
  last_tag=$tag
done;

cp -r _book/* dist/

echo "<meta http-equiv='refresh' content='0;URL=./$last_tag'>" >> dist/index.html

git reset --hard $latest
