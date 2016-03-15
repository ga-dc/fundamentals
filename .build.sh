#!/bin/bash

set -o errexit -o nounset

rm -r dist
mkdir dist
for tag in `git tag`; do
  mkdir dist/$tag
  git reset --hard $tag
  gitbook install
  gitbook build
  cp -r _book/* dist/$tag/
done;
