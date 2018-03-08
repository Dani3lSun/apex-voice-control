#!/bin/sh
#

# remove old lambda zip
rm -f lambda_avc-alexa-service.zip

# cd working dir
cd lambda/

# clear node_modules
rm -fr node_modules

# install fresh node_modules
npm install

# create zip file
zip -r ../lambda_avc-alexa-service.zip *

