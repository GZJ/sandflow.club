SHELL := /bin/bash

GATEWAY_SETUP_CERT := gateway_setup_cert.sh
GATEWAY_SETUP_HOMEPAGE := gateway_setup_user_homepage_location.sh
INDEX_GENERATE := index_generate.sh
INDEX_DEPLOY := index_deploy.sh
USER_SETUP_SKEL := user_setup_skel.sh
MOTD_SCRIPT := motd.sh
POSTFIX_SETUP := postfix.sh
CRON_CERTBOT_SCRIPT := cron_certbot.sh

all: gateway index user motd email cron

gateway:
	$(SHELL) $(GATEWAY_SETUP_CERT)
	$(SHELL) $(GATEWAY_SETUP_HOMEPAGE)

index:
	$(SHELL) $(INDEX_GENERATE)
	$(SHELL) $(INDEX_DEPLOY)

user:
	$(SHELL) $(USER_SETUP_SKEL)

motd:
	$(SHELL) $(MOTD_SCRIPT)

email:
	$(SHELL) $(POSTFIX_SETUP)

cron:
	$(SHELL) $(CRON_CERTBOT_SCRIPT)

.PHONY: all gateway index user motd email cron
