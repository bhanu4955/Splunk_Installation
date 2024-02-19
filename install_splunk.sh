#!/bin/bash

SPLUNK_URL="https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
INSTALL_DIR="/opt/splunk"
SPLUNK_USERNAME="admin"
SPLUNK_PASSWORD="bhargavi23"

# Create the installation directory
sudo mkdir -p $INSTALL_DIR

# Download Splunk
sudo curl -O $SPLUNK_URL

# Extract Splunk
sudo tar -xzf splunk-*.tgz -C $INSTALL_DIR --strip-components=1

# Start Splunk with username and password
sudo $INSTALL_DIR/bin/splunk start --accept-license --answer-yes -auth $SPLUNK_USERNAME:$SPLUNK_PASSWORD


