# Dotfiles (chemex)
The chemex to brewing my system

## How to install you may ask?
Just use stow
```sh
git clone https://github.com/fastfists/chemex --recursive
cd chemex
stow */
```

Update? just use stow

```
cd chemex
git pull && git submodule update
stow */
```

Its so nice eh? Well there's a lot of programs that you will need to install the ones off the top of my head are 
- neovim
- bspwm
- polybar
- sxhkd
Good luck with the rest

## Compiling sucky code

after stowing away the coffee
```
cd suckBuilds/st/
sudo make install
cd ../dmenu
sudo make install
```
