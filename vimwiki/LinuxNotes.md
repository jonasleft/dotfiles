# Linux Notes

## Ubuntu Thunar Hangs

**Disable Automount:**

* change `AutoMount=false` in `/usr/share/gvfs/mounts/network.mount`

## x2go, xrandr, display resolution

Add Resolution if no listed in `xrandr -q`
```
gtf 2560 1440 60

xrandr --newmode "2560x1440_60.00"  311.83  2560 2744 3024 3488  1440 1441 1444 1490  -HSync +Vsync xrandr

xrandr --addmode default "2560x1440_60.00"

xrandr --output default --mode "2560x1440_60.00"
```

## Keyboard

**set caps lock to escape key:**
```
setxkbmap -option caps:escape
```

## System Log

* `dmesg -wH`
* 
