#!/bin/bash

package=("formulahendry.auto-close-tag"\ 
	 "christian-kohler.path-intellisense"\
	 "Zignd.html-css-class-completion")

for i in "${package[@]}"; do
	code --install-extension $i
done
