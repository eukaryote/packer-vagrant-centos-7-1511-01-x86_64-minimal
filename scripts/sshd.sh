#!/bin/bash

sed -i 's/^.*UseDNS yes/UseDNS no/' /etc/ssh/sshd_config

# remove ssh host keys and restart ssh to generate new ones
rm -f /etc/ssh/ssh_host_*_key*
systemctl restart sshd
