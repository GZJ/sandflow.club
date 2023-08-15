#!/bin/bash

apt install postfix
postconf home_mailbox=Maildir/
