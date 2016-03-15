#!/bin/bash

set -o errexit -o nounset

gitbook install
mkdir dist
for tag in `git tag`; do
  mkdir dist/$tag
  git checkout $tag
  gitbook build
  cp -r _book/* dist/$tag/
done;
