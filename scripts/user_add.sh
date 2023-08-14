#!/bin/bash

NEW_USER=$1
PUB_KEY_FILE=$2

# create user
adduser --disabled-password --gecos "" $NEW_USER
cat $PUB_KEY_FILE > /home/$NEW_USER/.ssh/authorized_keys
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.ssh
chmod 700 /home/$NEW_USER/.ssh
chmod 600 /home/$NEW_USER/.ssh/authorized_keys

# generate index.html
export index_users=`ls ../users | tr -s '' | awk '{printf("<a href=\"https://tildenest.space/~%s\">~%s</a>\n", $1, $1)}'`
envsubst < index.html.tmpl > ../index.html
