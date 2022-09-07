# ZFS Filesystem

## Example: Setup ZFS

```bash
apt install zfs zfsutils-linux

zpool create pool-6tb /dev/sdc
zpool import pool-6tb backuppool
zfs set mountpoint=/mnt/backuppool backuppool
zpool list
zfs status
# zfs set compression=on backuppool
zfs get mountpoint

zfs create backuppool/system
zfs create backuppool/storage
```

### Importing

* `zpool import`: list available pools to import
* `zpool import backuppool`: import backuppool
* `zfs list`: show also all datasets

## Useful

* `zpool import oldpool newpool`: rename pool
