#!/bin/bash

# get script from https://gist.github.com/kamontat/928ae260f6ff927b4f8880ccc833d618

# make sure that you give permission to this file
# run chmod 755 atom-plugin.sh
# or  chmod +x atom-plugin.sh
# -----------------------------------------

# command setting
if ! command -v apm >/dev/null 2>&1 && ! command -v apm-beta >/dev/null 2>&1; then
    echo "you don't have commandline interface, install it!"
    exit 1
fi
COMMAND=apm
command -v apm >/dev/null 2>&1 || COMMAND=apm-beta

# -----------------------------------------

# theme
# THEMES=("theme 1" "theme 2") # and so on
# package
PACKAGES=("autoclose-html" "open-in-browser" "minimap-plus" "file-icons")

# -----------------------------------------

# execute
# echo "installing ${#THEMES[@]} themes!!"
# for i in ${THEMES[@]}; do
#     $COMMAND install $i
# done

echo "installing ${#PACKAGES[@]} packages!!"
for i in ${PACKAGES[@]}; do
    $COMMAND install $i
done

echo "complete!!!"
