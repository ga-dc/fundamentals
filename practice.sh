git for-each-ref --shell \
  --format='git log --oneline %(refname) ^origin/master' \
  refs/heads/