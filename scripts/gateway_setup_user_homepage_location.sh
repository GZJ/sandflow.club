#!/bin/bash

nginx_conf="/etc/nginx/sites-available/default"

user_homepage_location='

    	location ~ ^/~(.+?)(/.*)?$ {
        	alias /home/$1/public_html$2;
        	index index.html index.htm;
        	autoindex on;
    	}
'

if [ -f "$nginx_conf" ]; then
	escaped_user_homepage_location=$(printf '%s\n' "$user_homepage_location" | sed -e 's/[]\/$*.^[]/\\&/g')
	matched=0
	perl -0777 -i -pe "if (\$matched == 0 && s/(location\s*\/\s*{\s*[^}]*\s*})/\$1$escaped_user_homepage_location/) { \$matched = 1; }" $nginx_conf
	echo "update nginx config"
else
	echo "no nginx config"
fi
