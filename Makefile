#include ./gitr.mk



# https://github.com/gedw99/sc-make-examples


MAKE_FSPATH=$(PWD)/make
include $(MAKE_FSPATH)/help.mk

# TODO make this relect based :) cant be bother right now to fix...
GIT_REPO_URL=https://github.com/gedw99/sc-make-examples

SC_MAKE_BIN_FSPATH=$(GOPATH)/bin
SC_MAKE_BIN_NAME=sc-make
SC_MAKE_BIN=$(SC_MAKE_BIN_FSPATH)/$(SC_MAKE_BIN_NAME)



THEME_LIB=github.com/gerardwebb/hugo-hero-theme
# forked from: https://github.com/zerostaticthemes/hugo-hero-theme

THEME_FSPATH=$(PWD)/hugo-hero-theme







print:
	@echo 
	@echo --- GIO-MAKE ---
	@echo 'GIT_REPO_URL:           $(GIT_REPO_URL)'
	@echo 'SC_MAKE_BIN_NAME:       $(SC_MAKE_BIN_NAME)'
	@echo 'SC_MAKE_BIN_FSPATH:     $(SC_MAKE_BIN_FSPATH)'
	@echo 'SC_MAKE_BIN:            $(SC_MAKE_BIN_NAME) installed at : $(shell which $(SC_MAKE_BIN))'

	@echo
	@echo --- HUGO ---
	@echo 'THEME_LIB:              $(THEME_LIB)'
	@echo 'THEME_FSPATH:           $(THEME_FSPATH)'
	@echo

### SC-MAKE

## sc-make-create
sc-make-create:
	# boot strap the repo....
	$(SC_MAKE_BIN_NAME) create

## sc-make-delete
sc-make-del:
	# blow it away
	rm -rf make
	rm -rf project


	

### GIT

COMMIT_MESSAGE='added more ...'
## git-commit
git-commit:
	git add --all
	git commit -am $(COMMIT_MESSAGE)

## git-pull
git-pull:
	git pull 

## git-push
git-push:
	git push 
	open $(GIT_REPO_URL)
	

dep:
	# hugo theme
	git clone https://$(THEME_LIB) $(THEME_FSPATH)
dep-delete:
	rm -rf $(THEME_FSPATH)

svg-open:
	open https://svg-edit.github.io/svgedit/releases/latest/editor/svg-editor.html

svg-merge:
	# Grab SVG from SVGEDIT
	# icon is the standard name....
	mkdir -p _inject/temp
	cp $(HOME)/Downloads/icon*.svg _inject/temp

favicon-open:
	# just convert the mobiel SVG to a PNG liek he does
	open https://svgtopng.com/
	# push up mobile svg
	# download into downloads.
	
favicon-merge:
	# pull down png into _inject/mine folder
	cp $(HOME)/Downloads/icon*.png _inject/temp


inject:
	# We inject orverrides into their source.
	# SO when they update it we can just run this again.

	# Fav icon
	# This one goes into my repo, not theirs.
	cp $(PWD)/_inject/mine/logo-mobile.png $(PWD)/static/favicon.png

	# logo-mobile.svg
	cp _inject/mine/logo-mobile.svg $(THEME_FSPATH)/static/images

	# logo.svg
	cp _inject/mine/logo.svg $(THEME_FSPATH)/static/images
	#code public/css/style.css
	code $(THEME_FSPATH)/assets/scss/components/_logo.scss
	# Line5: change width from 120 --> 220

	# footer
	cp _inject/mine/sub-footer.html $(THEME_FSPATH)/layouts/partials

	

hugo-build: ## hugo-build
	hugo

hugo-run: ## hugo-run
	hugo server -F
	#if this doesn't work, try 'hugo server -D'

hugo-open: ## hugo-open
	open http://localhost:1313/

### deploy ( not using )
GCLOUD_PROJ_ID=getcourage-web-example-letencrypt
deploy-gc:
	# see: https://stephenmann.io/post/hosting-a-hugo-site-in-a-google-bucket/
	
	# create proj
	gcloud projects create $(GCLOUD_PROJ_ID)
	gcloud config set project $(GCLOUD_PROJ_ID)
	gsutil mb gs://example.getcouragenow.org/
	#cd $(LIB_FSPATH) && hugo deploy -h

# Deploy to Firebase ( using this for ease for now )

# TOGGLE environment:
# PROD
PROD_FB_PROJ_ID=winwisely-getcourage-org
# DEV
DEV_FB_PROJ_ID=winwisely-letsencrypt-web

FB_PROJ_CONSOLEURL=https://console.firebase.google.com/project/$(PROD_FB_PROJ_ID)

deploy-fb-init:
	# 1. ONE TIME: make the project here:https://console.firebase.google.com/
	# web console:  https://console.firebase.google.com/project/getcourage-web-letencrypt/overview

	#firebase init 
	firebase init 

	# firebase login
	firebase login --no-localhost

deploy-fb-ci-init: ## deploy-fb-ci.init
	# get token 
	

	firebase projects:list 


deploy-fb-console:
	# opens the web console.
	open $(FB_PROJ_CONSOLEURL)/settings/general

	open $(FB_PROJ_CONSOLEURL)/hosting/main


deploy-build:
	# rebuilds hugo and copies output directory to root of deployment
	cd $(LIB_FSPATH) && hugo -D
	ls -al $(LIB_FSPATH)/public
	# does the actual push deploy to their server.
	rm -R ./public
	cp -R $(LIB_FSPATH)/public ./public

deploy-local-fb: deploy-build ## deploy-local-fb
	firebase serve
	
deploy-fb: deploy-build ## deploy-fb
	
	## get token
	firebase login:ci

	#firebase deploy
	
	firebase deploy --token $(FIREBASE_TOKEN)


