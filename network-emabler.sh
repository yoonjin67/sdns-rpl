#!/bin/sh
# Example Setup For Gram 2022 late.
modprobe -f buffer
nohup rpl > /sys/class/net/wlp0s20f3&
cat /dev/net/tun > /dev/buffer0
cat /dev/buffer0 | tee /usr/bin/rpl | data-sanitizer | /sys/class/net/wlp0s20f3 
