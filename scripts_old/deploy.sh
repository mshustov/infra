#!/bin/bash

echo "> Deploying reddit App"

# Checkout project
git clone https://github.com/Artemmkin/reddit.git
cd reddit

# Install dependencies
bundle install

# Run app
puma -d

echo "> End Reddit App Installation"
