# DevBox-RDFIO
*Vagrant box backed by Docker or Virtualbox, with Ansible provisioning*

A Vagrant box (Virtualbox or Docker as providers) with Ansible provisioning
for setting up development environment for developing RDFIO.


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
vagrant up virtualbox
```

Surf in to your new MediaWiki installation on:

* [localhost:8080/w](http://localhost:8080/w)

## STATUS

In general: Work in progress!

In more detailed terms:

- [x] Install PHP
- [x] Install MediaWiki
- [x] Install Semantic MediaWiki
- [ ] Install RDFIO
