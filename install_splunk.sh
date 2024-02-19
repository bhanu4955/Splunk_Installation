#!/bin/bash

SPLUNK_URL="https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
INSTALL_DIR="/opt/splunk"
#SPLUNK_USERNAME="admin"
#SPLUNK_PASSWORD="bhargavi23"

# Create the installation directory
#mkdir -p $INSTALL_DIR

# Download Splunk
curl -O $SPLUNK_URL

# Extract Splunk
tar -xzf splunk-*.tgz -C /opt/splunk --strip-components=1

# Start Splunk with username and password
/opt/splunk/bin/splunk start --accept-license --answer-yes 

#-auth $SPLUNK_USERNAME:$SPLUNK_PASSWORD


