# USBIP - USB Over IP

## Raspberry Server Setup

### Install

```
sudo -s
sudo apt install usbip
sudo modprobe usbip_host
lsmod | grep usbip
sudo echo 'usbip_host' >> /etc/modules
```

### Bind USB Devices

```
lsusb
usbip list -p -l
sudo usbip bind --busid=1-1.2
```

### Start

**For Testing:**  
```
sudo usbipd
```

**Daemon:**  

Create service file: `/lib/systemd/system/usbip.service`:
```
[Unit]
Description=usbip host daemon
After=network.target

[Service]
Type=forking
ExecStart=/usr/sbin/usbipd -D

ExecStartPost=/bin/sh -c "/usr/sbin/usbip list -p -l | awk -F# '/(10c4:ea71|03fd:0013|03fd:0008)/ {print $1}' | xargs -l -I{} /usr/sbin/usbip bind --{}"

ExecStop=/bin/sh -c "/usr/sbin/usbip list -p -l | awk -F# '/(10c4:ea71|03fd:0013|03fd:0008)/ {print $1}' | xargs -l -I{} /usr/sbin/usbip unbind --{}; killall usbipd"


[Install]
WantedBy=multi-user.target
```

**Run Service:**  
```
sudo systemctl --system daemon-reload
sudo systemctl enable usbip.service
sudo systemctl start usbip.service
```


## Client setup

### Install

```
sudo -s
apt install linux-tools-generic -y
sudo modprobe vhci-hcd
lsmod | grep vhci_hcd
sudo echo 'vhci-hcd' >> /etc/modules
```
call `usbip attach` and install missing package with apt.

### Attach

```
sudo usbip attach -r <ip> -b 1-1.2
```

### Detach

```
usbip port
sudo usbip detach -p 00
```
