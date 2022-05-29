# Tools installed by npm
1. Install `node.js`.
- Download `node.js` from [its official website](https://nodejs.org/en/).
- After extracting the compressed folder, `cp` the "bin  include  lib  share"
to `~/home_local`.

2. Add the following to `.zshrc`
```bash
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
```
3. Writhe the following `prefix = /home/johnzli/.npm-packages` in `~/.npmrc`.
4. Install `yarn` using `npm install --global yarn`
5. Build ``
```bash
cd ~/.vim/plugged/markdown-preview.nvim
yarn install
# hope can remove the below in future
export NODE_OPTIONS=--openssl-legacy-provider
yarn build
```
