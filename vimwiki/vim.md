# Vim Cheatsheet

## Diff

| Function              | command           |
| -------               | -------           |
| Diff current buffer   | `:diffthis`       |
| Diff all open windows | `:windo diffthis` |
| Diff off              | `:diffoff`        |
| diff update           | `:diffupdate`     |
| next/previous diff    | `[c` / `]c`       |

## Substitute: Search / Replace

| Function                     | command          |
| -------                      | -------          |
| Search/Replace complete file | `:%s/old/new/g`  |
| same with confirmation       | `:%s/old/new/gc` |
| Substitute last search pattern | `:%s//new/g` |

**Regular expression quantifier:**  

* http://www.vimregex.com/#Non-Greedy

 `*`  : Match 0 or more 
 `\+` : Match 1 or more
 `\=` : Match 0 or 1

## Tricks

| Command | Mode        | Description                                      |
| ------- | -------     | -----                                            |
| !!      | Normal Mode | Insert shell command output                      |
| CTRL-O  | Insert Mode | Entering command-mode command inside insert mode |
|         |             |                                                  |


# Swap ESC/CapsLock

The following commands should work:
xmodmap -e 'keycode 0x42 = Caps_Lock'
or
setxkbmap -option
The commands above work just fine to restore the default behaviour, which I hardly ever need, luckily.
I normally remap the capslock to Control (luckily VI/VIM supports CTRL-C instead of ESC) with the following command:
setxkbmap -option ctrl:nocaps -layout gb


