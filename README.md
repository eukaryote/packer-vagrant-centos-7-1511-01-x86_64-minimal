# packer-vagrant-centos-7-x86_64-minimal

This is a fork of https://github.com/bbirkinbine/packer-vagrant-centos-7-1503-01-x86_64-minimal
for personal use that uses a newer centos7 version and has some other minor changes.

To create the vagrant box, run:

```
make
```

Security:

	Remember that this is designed for use with Vagrant, vagrant by default has a root password of vagrant.
	The default username/password for vagrant is vagrant/vagrant and the public/private keys are widely available.

	Do not use this for production use or on the Internet without removing the vagrant user, changing the root password,
		and consider enabling the firewall (systemctl enable firewalld) and if you are familiar with selinux, enable it /etc/selinux/config

	You have been warned.
