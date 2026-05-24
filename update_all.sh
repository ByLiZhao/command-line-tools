#!/usr/bin/bash

# update fzf
pushd /home/johnzli/home_local/src/fzf
git pull && ./install --all
popd

# update Rust toolchian
rustup update
# upodate Rust tools
cargo install-update -a
# update neovide
cargo install --force --git https://github.com/neovide/neovide

# update JS tools
npm install -g npm
npm install -g yarn
npm update -g
rm package-lock.json

# update ctags
pushd /home/johnzli/home_local/src/ctags
git pull
./autogen.sh
./configure --prefix=/home/johnzli/home_local/
make && make install
popd

# update nvim
pushd /home/johnzli/home_local/src/neovim
git pull
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=/home/johnzli/home_local
make && make install
popd
