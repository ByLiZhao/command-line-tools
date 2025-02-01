# Add new fonts to Ubuntu so that several commanmd line tools can work correctly
1. Install [powerline fonts](https://github.com/powerline/fonts)
```bash
# install gnome fonts viewer
sudo apt install gnome-font-viewer
# more math symbols
sudo apt install fonts-mathjax fonts-mathjax-extras
sudo apt-get install fonts-powerline
```
2. Install Microsoft fonts
```bash
sudo apt-get install msttcorefonts
```
3. Install [nerd-fonts](https://github.com/ryanoasis/nerd-fonts).
```bash
git clone git@github.com:ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh Hack
./install.sh HeavyData
```
4. Regenerate fonts cache
```bash
sudo fc-cache -fv
```
