# chemex
Dotfiles, the chemex to brewing a system

How to use you may ask? Just use stow

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

Its so nice eh?

Compiling sucky code

after stowing away the coffee
```
cd suckBuilds/st/
sudo make install
cd ../dmenu
sudo make install
```
