# Themes
## Terminal
* nord-xfce-terminal:  https://github.com/arcticicestudio/nord-xfce-terminal
Install:
```bash
git clone https://github.com/arcticicestudio/nord-xfce-terminal.git
cd nord-xfce-terminal
./install.sh
```

## GTK3
* gtk3 theme: https://github.com/EliverLara/Nordic

## Fonts
* Source Code Font: https://github.com/adobe-fonts/source-code-pro
* sudo apt-get install fonts-hack-ttf
* XFCE terminal default: DejaVu Sans Mono Book 9


# ZSH

**Example Config of ~/.zshrc:**

```bash
source ~/dotfiles/.zshrc

```

# Additional Tools/Software

## Shell

### Fuzzy Finder
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Markdown Viewer

### ReText

* https://github.com/retext-project/retext
* Install (for python > 3.6):
```bash
sudo python3 -m pip install pyqt5==5.14  # ubuntu 18.04 reports error if version is not specified...?
pip3 install ReText
```

