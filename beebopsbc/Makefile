# Makefile for SIREMIS

# make variables
NAME ?= sbc
URLBASE ?= $(NAME)
BASEDIR=`pwd`
SIREMISDIR=$(BASEDIR)/$(NAME)
VERSION=5.3.0

owner ?= www-data:www-data

# tools
TAR ?= tar

# cooltext (dn:com/st:glowingsteel/fg:brandname/fn:hopt)

all: prepare

prepare-htaccess:
	@echo "updating htaccess file for apache 2.2 ..."
	@sed -e "s#/%%URLBASE%%/#/$(URLBASE)/#g" \
				< ./misc/templates/htaccess > ./beebopsbc/.htaccess


prepare-htaccess24:
	@echo "updating htaccess file for apache 2.4 ..."
	@sed -e "s#/%%URLBASE%%/#/$(URLBASE)/#g" \
				< ./misc/templates/htaccess24 > ./beebopsbc/.htaccess
	@echo "deploying htaccess files for apache 2.4 in subdirs ..."
	@cp ./misc/templates/htaccess24-deny ./bebopsbc/log/.htaccess
	@cp ./misc/templates/htaccess24-deny ./openbiz/metadata/.htaccess
	@cp ./misc/templates/htaccess24-deny ./openbiz/languages/.htaccess


prepare-common:
	@echo "updating app.inc file..."
	@sed -e "s#/%%URLBASE%%#/$(URLBASE)#g" \
				< ./misc/templates/app.inc > ./beebopsbc/bin/app.inc
	@echo "creating folders..."
	@mkdir -p beebopsbc/files/cache
	@mkdir -p beebopsbc/files/cache/data
	@mkdir -p beebopsbc/files/cache/metadata
	@mkdir -p beebopsbc/themes/default/template/cpl
	@echo "done"


# prepare SIREMIS dirs for web install with apache 2.2
prepare: prepare-htaccess prepare-common


# prepare SIREMIS dirs for web install with apache 2.4
prepare24: prepare-htaccess24 prepare-common


apache-conf:
	@echo "# sapache 2.2 conf snippet ..."
	@echo
	@sed -e "s#%%URLBASE%%#$(URLBASE)#g" \
				-e "s#%%SIREMISDIR%%#$(SIREMISDIR)#g" \
				< ./misc/templates/apache2.conf

apache24-conf:
	@echo "# siremis apache 2.4 conf snippet ..."
	@echo
	@sed -e "s#%%URLBASE%%#$(URLBASE)#g" \
				-e "s#%%SIREMISDIR%%#$(SIREMISDIR)#g" \
				< ./misc/templates/apache24.conf

clean: cleancache

distclean: cleancache cleansessions

cleancache:
	@echo "cleaning caching files..."
	rm -f beebopsbc/themes/default/template/cpl/*.php
	rm -f beebopsbc/log/*.log
	rm -f beebopsbc/files/cache/metadata/*.cmp
	rm -rf `find ./beebopsbc/files/cache/data/* -maxdepth 0 -type d`

cleansessions:
	@echo "cleaning session files..."
	rm -f beebopsbc/session/sess_*

cleansvn:
	@echo "removing .svn directories..."
	rm -rf `find . -type d -name .svn`

cleansiremis:
	@echo "removing temporary files..."
	rm -f beebopsbc/*.txt
	rm -f beebopsbc/*.lock

cleanbin:
	@echo "removing unsafe files..."
	rm -rf beebopsbc/bin/cronjob
	rm -rf beebopsbc/bin/filebrowser
	rm -rf beebopsbc/bin/phing
	rm -rf beebopsbc/bin/tools
	rm -rf beebopsbc/bin/toolsx
	rm -f beebopsbc/bin/empty.php
	rm -f beebopsbc/bin/install_mod.php
	rm -f beebopsbc/bin/metaedit.php

cleanweb: cleansvn cleansiremis cleanbin

cleanwiz:
	@echo "removing web installation wizard files..."
	rm -rf beebopsbc/install

toolsx:
	@echo "preparing toolsx meta bin directory..."
	rm -rf beebopsbc/bin/toolsx
	cp -a misc/bin/toolsx siremis/bin/

cleantoolsx:
	@echo "removing toolsx meta bin directory..."
	rm -rf beebopsbc/bin/toolsx

resetchmod:
	@echo "reseting file permisions..."
	find . ! -type d -exec chmod 644 {} \;
	find . -type d -exec chmod 755 {} \;

locks:
	@echo "preparing install lock..."
	touch beebopsbc/install.lock

cleanlocks:
	@echo "removing install lock..."
	rm -rf beebopsbc/install.lock

.PHONY: chown
chown:
	@echo "changing onwner to $(owner) ..."
	chown -R $(owner) .

cleantopkg: distclean cleansvn cleansiremis cleanbin cleantoolsx

.PHONY: tar
tar:
	rm -rf tmp
	mkdir -p tmp/$(NAME)-$(VERSION)
	$(TAR) --exclude=tmp/* --exclude=tmp -cf - . \
		| $(TAR) -x --directory=tmp/$(NAME)-$(VERSION)
	make -C tmp/$(NAME)-$(VERSION) cleantopkg
	$(TAR) -C tmp/ \
		--exclude=.git* \
		--exclude=.svn* \
		--exclude=.cvs* \
		--exclude=CVS* \
		--exclude=*.gz \
		--exclude=*.tgz \
		--exclude=*.bz2 \
		--exclude=*.tar \
		--exclude=*.patch \
		--exclude=.\#* \
		--exclude=*.swp \
		--exclude=*.swo \
		-czvf "$(NAME)-$(VERSION).tgz" "$(NAME)-$(VERSION)"
	mv "$(NAME)-$(VERSION).tgz" ../
	rm -rf tmp

