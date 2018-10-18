#/bin/bash

git pull --all
git submodule update --init --recursive
git-recurse "git checkout master"
git-recurse "git pull --ff-only"

# Extra update needed, not sure why
git submodule update --recursive

echo ' '
git submodule status --recursive
