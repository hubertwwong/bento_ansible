#!/bin/bash
# copies the files over to root of the git bash shell.
# when opening git bash, type in pwd and copy it to the git dir
git_dir="/c/Users/huber"
#git_dir="/c/Users/Bruce Wayne"

echo "> copyToRoot.bash > copy the bash config files over to gitbash root"
cp zzz/gitbash/.bash* $git_dir
