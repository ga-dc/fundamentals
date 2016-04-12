#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd dist

git init
git config user.name "JD Maresco"
git config user.email "jdmaresco@gmail.com"

git remote add upstream "https://$GH_TOKEN@github.com/generalassembly/fundamentals.git"
git fetch upstream
git reset upstream/gh-pages

echo "fundamentals.generalassemb.ly" > CNAME

touch .

git add -A .
git commit -m "Rebuild fundamentals at ${rev}"
git push -q upstream HEAD:gh-pages
