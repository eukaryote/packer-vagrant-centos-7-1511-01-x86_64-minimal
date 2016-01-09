#!/bin/bash

sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-e*
sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-e*

cd /etc
> ./resolv.conf

find /tmp -mindepth 1 -delete

shred -uv /var/lib/systemd/random-seed

cd /var/log
> wtmp
> cron
> dmesg
> dmesg.old
> lastlog
> secure
> messages
> maillog

cd /root
rm -f .lesshst .bash_history
