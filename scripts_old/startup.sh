#!/bin/bash

# Checkout infra repo
git clone https://github.com/restrry/infra.git
cd infra

# Install Ruby
source ../packer/scripts/install_ruby.sh

# Install MongoDB
source ../packer/scripts/install_mongodb.sh

# Install Puma app
source deploy.sh
