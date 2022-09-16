# Homelab

## performance tests old system

**6 TB disk:**  
```
$ dd if=/dev/zero of=tempfile bs=1M count=1024 conv=fdatasync,notrunc
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9821 s, 89.6 MB/s
  
# Clear Cache:
echo 3 | sudo tee /proc/sys/vm/drop_caches

$ dd if=tempfile of=/dev/null bs=1M count=1024
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 8.79426 s, 122 MB/s
```

**4 TB disk, Raid1:**  
```bash
$ dd if=/dev/zero of=tempfile bs=1M count=1024 conv=fdatasync,notrunc                                                      130 ↵
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 28.0986 s, 38.2 MB/s

$ echo 3 | sudo tee /proc/sys/vm/drop_caches

$ dd if=tempfile of=/dev/null bs=1M count=1024
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 15.4103 s, 69.7 MB/s
```

**120GB SSD:**  
```bash
$ dd if=/dev/zero of=tempfile bs=1M count=1024 conv=fdatasync,notrunc
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 8.53808 s, 126 MB/s

$ echo 3 | sudo tee /proc/sys/vm/drop_caches

$ dd if=tempfile of=/dev/null bs=1M count=1024
  1024+0 records in
  1024+0 records out
  1073741824 bytes (1.1 GB, 1.0 GiB) copied, 7.25342 s, 148 MB/s
```

## Homer Dashboard

* Nord Theme: https://github.com/thermatico/homer-nord
* 
