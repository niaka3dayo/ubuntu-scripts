#!/bin/bash

# Get and install the latest version of nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Load the nvm environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Get and install the latest LTS version of Node.js
nvm install --lts

# Set the latest LTS version of Node.js as the active version
nvm use --lts

# Install the latest version of npm
npm install -g npm@latest
# Install the latest version of pnpm
npm install -g pnpm@latest
# Install the latest version of yarn
npm install -g yarn@latest

# Check the Node.js version
node -v
