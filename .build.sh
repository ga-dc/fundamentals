#!/bin/bash

set -o errexit -o nounset

latest=`git rev-parse HEAD`
rm -r dist
mkdir dist
for tag in `git tag`; do
  mkdir dist/$tag
  git reset --hard $tag
  gitbook install
  gitbook build
  rm -r _book
  cp -r _book/* dist/$tag/
  git reset --hard $latest
done;
