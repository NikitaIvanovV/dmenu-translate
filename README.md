# dmenu-translate

[dmenu](https://tools.suckless.org/dmenu/) script for quick text translation with [translate-shell](https://github.com/soimort/translate-shell/)

![showcase](showcase.webp)

## Dependencies

* [dmenu](https://tools.suckless.org/dmenu/),
[wmenu](https://git.sr.ht/~adnano/wmenu) or
any other dmenu-like utility (see [Configuration](#configuration))
* trans from [translate-shell](https://github.com/soimort/translate-shell/)
* [xclip](https://github.com/astrand/xclip/) or
[wl-clipboard](https://github.com/bugaevc/wl-clipboard)
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

If you are an Arch Linux user, you can install
[`dmenu-translate-git`](https://aur.archlinux.org/packages/dmenu-translate-git/)
AUR package.

```sh
yay -S dmenu-translate-git
```

## Usage

Just run `dmenu-translate` and the menu will appear:

1. Enter text to translate or choose mouse text selection
2. Select language to translate text into
(or select `[Define]` option to view definition of a word)
3. View translation in a new terminal window or copy it to clipboard

I bound `Super-Ctrl-t` to call the script on my dwm build.
So, whenever I encounter a word I don't know,
I can select it with a mouse and get its definition or translation very quickly.
You might want to do something similar on your system.

The script respects `TERMINAL` and `PAGER` environmental variables.

## Configuration

By default, only English and Russian languages appear in the menu.
You can alter this behavior by editing a configuration file located at
`~/.config/dmenu-translate/config.sh`.

Example configuration file:

```sh
# Languages that appear in the menu.
TRANS_LANGS='ru en'

# Menu program.
DMENU='dmenu'

# Commands that are run to display menus.
DMENU_TEXT=''  # select text to translate
DMENU_LANG=''  # select language to translate to
DMENU_NEXT=''  # select what to do with the translation

# Set this to any value if you want to always copy the
# translation (skips DMENU_NEXT menu).
ALWAYS_COPY=
```
