#!/bin/bash

export index_users=`ls ../users | tr -s '' | awk '{printf("<a href=\"https://sandflow.club/~%s\">~%s</a>\n", $1, $1)}'`
export readme=$(cat ../README)
envsubst < index.html.tmpl > ../index.html
