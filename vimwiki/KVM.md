# Virtualization KVM

## Guest agents:

* qemu-guest-agent
* spice-vdagent

## Ubuntu/Unity on KVM

* Problem: needs 3D support to run properly
* Check 3D support:
  * `sudo apt install nux-tools`
  * `/usr/lib/nux/unity_support_test -p`

 1. Virtual Hardware Details
 2. Video Virtio
   1. Model: Virtio
   2. Check 3D acceleration
 3. Display Spice
   1. Check OpenGL

1.
 
