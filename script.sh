#!/bin/bash

mkdir -p ~/.ssh/klucze
cat > ~/.ssh/config <<EOF
Host bitbucket.org
  IdentityFile ~/.ssh/klucze/id_rsa
EOF


chmod 400 ~/.ssh/klucze/id_rsa

bash /git-sync