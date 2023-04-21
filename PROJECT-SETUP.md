# How I setup a project

## Project setup.

## Readme, License Setup

https://www.makeareadme.com/
https://www.termsfeed.com/blog/sample-copyright-notices/
https://choosealicense.com/licenses/gpl-3.0/#

## Automated Changelog Setup

https://www.conventionalcommits.org/en/v1.0.0-beta.2/
https://mokkapps.de/blog/how-to-automatically-generate-a-helpful-changelog-from-your-git-commit-messages/
https://betterprogramming.pub/how-to-lint-commit-messages-with-husky-and-commitlint-b51d20a5e514


```
npm i -D @commitlint/{cli,config-conventional}

echo "{\"extends\": [\"@commitlint/config-conventional\"]}" >> .commitlintrc.json
echo "module.exports = {extends: ['@commitlint/config-conventional'],};" >> commitlint.config.js

npx husky install
npx husky add .husky/commit-msg 'npx commitlint --edit $1'

npm i --save-dev standard-version
echo '{ "name": "see.readme" "version": "0.1.0", "scripts": {"release": "standard-version","release:minor": "standard-version --release-as minor","release:patch": "standard-version --release-as atch", "release:major": "standard-version --release-as major"}, }'
```
