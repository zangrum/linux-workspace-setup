#!/bin/bash
curl https://raw.githubusercontent.com/zangrum/linux-workspace-setup/master/changeme-config-files/package.json --output package.json
curl https://raw.githubusercontent.com/zangrum/linux-workspace-setup/master/changeme-config-files/.versionrc.json --output .versionrc.json
curl https://raw.githubusercontent.com/zangrum/linux-workspace-setup/master/changeme-config-files/.commitlintrc.json --output .commitlintrc.json
curl https://raw.githubusercontent.com/zangrum/linux-workspace-setup/master/changeme-config-files/commitlint.config.js --output commitlint.config.js


npm i -D @commitlint/{cli,config-conventional}

npx husky install

npx husky add .husky/commit-msg 'npx commitlint --edit $1'