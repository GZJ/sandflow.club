#!/bin/bash

README_CONTENT=$(cat README)
awk -v content="$README_CONTENT" '{gsub("{{README}}", content)}1' index.html.tmpl > index.html
echo "HTML file generated: index.html"
