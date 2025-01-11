#!/usr/bin/bash

# update fzf
pushd /home/johnzli/home_local/src/fzf
git pull &&  ./install  --all
popd

# upodate Rust tools
cargo install-update -a

# update JS tools
npm outdated |npm update
rm package-lock.json

# update ctags
pushd /home/johnzli/home_local/src/ctags
git pull
./autogen.sh
./configure --prefix=/home/johnzli/home_local/
make && make install
popd

