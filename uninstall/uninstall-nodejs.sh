#!/bin/bash

# Load nvm environment variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Uninstall all installed Node.js versions
nvm ls | grep -o -E 'v[0-9]+\.[0-9]+\.[0-9]+' | while read version; do
  nvm uninstall $version
done

# Uninstall nvm itself
rm -rf $HOME/.nvm

# Remove nvm load scripts from .bashrc and .bash_profile
sed -i '/nvm.sh/d' ~/.bashrc
sed -i '/nvm.sh/d' ~/.bash_profile

# Uninstall remaining system Node.js and npm (if installed by means other than nvm)
sudo apt-get purge -y nodejs npm
