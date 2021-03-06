#!/bin/bash

mkdir -p ~/.ssh/klucze
cat > ~/.ssh/config <<EOF
Host bitbucket.org
  IdentityFile ~/.ssh/klucze/id-rsa
Host bitbucket.otlabs.fr
  IdentityFile ~/.ssh/klucze/id-rsa
Host github.com
  IdentityFile ~/.ssh/klucze/id-rsa
EOF


chmod 400 ~/.ssh/klucze/id-rsa
 ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
 ssh-keyscan bitbucket.otlabs.fr >> ~/.ssh/known_hosts
 ssh-keyscan github.com >> ~/.ssh/known_hosts

/git-sync
