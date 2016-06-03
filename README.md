# DevBox-RDFIO

A [Vagrant](https://www.vagrantup.com/) box with
[Ansible](https://www.ansible.com/) provisioning for setting up a local
development environment in a virtual machine, for developing the
[RDFIO](https://github.com/rdfio/RDFIO) extension to
[MediaWiki](https://www.mediawiki.org) / [Semantic MediaWiki](https://www.semantic-mediawiki.org).

The fact that Ansible is used for provisioning, means that the installation
instructions are easy to understand and change, and that they can be equally
well installed elsewhere too, not just in a virtual machine on the local
computer.


## Prerequisites

### [Virtualbox](https://www.virtualbox.org/)

Install on Ubuntu 16.04 with:

```
sudo apt-get install virtualbox
```

### [Vagrant](https://www.vagrantup.com/)

Install on Ubuntu 16.04 by [downloading the debian installer](https://www.vagrantup.com/downloads.html) and installing it:

```
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo dpkg -i vagrant_1.8.1_x86_64.deb
```

### [Ansible](https://www.ansible.com/)

Install on Ubuntu 16.04 with:

```
sudo apt-get install ansible
```

### SSH client

(Already included in linux and OS X)

## How to:

Clone the repo:

```bash
git clone https://github.com/samuell/devbox-rdfio
```
Enter the cloned folder:

```bash
cd devbox-rdfio
```

... and let vagrant take care of the rest:

```bash
vagrant up
```

Surf in to your new MediaWiki installation on:

* [localhost:8080/w](http://localhost:8080/w)

... or SSH in to your machine, and entering the wiki installation folder:

```bash
vagrant ssh
cd /var/www/html/w
```

## STATUS

In general: Work in progress!

In more detailed terms:

- [x] Install PHP
- [x] Install MediaWiki
- [x] Install Semantic MediaWiki
- [x] Install RDFIO

## Known issues

- If you try to run `vagrant provision` after running `vagrant up`, and haven't
  run the ARC2 setup via the wiki interface, you will get fat red errors.
