# Install

```bash
git clone https://github.com/jonasleft/dotfiles ~/dotfiles
cd ~/dotfiles
. ./bootstrap.sh
```

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


# Additional Tools/Software


## Markdown Viewer

### ReText

* https://github.com/retext-project/retext
* Install (for python > 3.6):
```bash
sudo python3 -m pip install pyqt5==5.14  # ubuntu 18.04 reports error if version is not specified...?
pip3 install ReText
```
# Notebook Zbook G5 specific

## Touchpad too sensitive

```bash
sudo apt-get purge xserver-xorg-input-synaptics
sudo apt-get install xserver-xorg-input-libinput
```
