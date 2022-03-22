# dmenu-translate

Simple POSIX shell script for quick text translation with [dmenu](https://tools.suckless.org/dmenu/).

## Dependencies

* [dmenu](https://tools.suckless.org/dmenu/) (or any other dmenu-like utility)
* trans from [translate-shell](https://github.com/soimort/translate-shell/)
* notify-send

## Installation

### Manual

```sh
git clone https://github.com/NikitaIvanovV/dmenu-translate
cd dmenu-translate
sudo make install
```

Uninstall with `sudo make uninstall`

### AUR

If you are an Arch Linux user, you can install [`dmenu-translate-git`](https://aur.archlinux.org/packages/dmenu-translate-git/) AUR package.

```sh
yay -S dmenu-translate-git
```

## Usage

Just run:

```sh
dmenu-translate
```

You will be able to select contents of X primary selection and clipboard or type a word manually.
Then, another menu will appear where you can choose a target language to translate to (see below on how to [configure](#configuration) this menu). Or you can choose `[Define]` option and the text will be looked up in a dictionary and printed in a new terminal window.

I bound `Super-Ctrl-t` to call the script on my dwm build.
So, whenever I encounter a word I don't know, I can select it with a mouse and get its definition or translation very quickly.
You might want to do something similar on your system.

## Configuration

By default, only English and Russian languages appear in the menu.
You can alter this behavior (and many other settings also) by editing a configuration file located at `~/.config/dmenu-translate/config.sh`.
If the file does not exist, run the script and the default configuration will be created.
