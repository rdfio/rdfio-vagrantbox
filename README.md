# RDFIO Vagrant box

A [Vagrant](https://www.vagrantup.com/) box with
[Ansible](https://www.ansible.com/) provisioning for setting up a local
development environment in a virtual machine, for developing the
[RDFIO](https://github.com/rdfio/RDFIO) extension to
[MediaWiki](https://www.mediawiki.org) / [Semantic MediaWiki](https://www.semantic-mediawiki.org).

The fact that Ansible is used for provisioning, means that the installation
instructions are easy to understand and change, and that they can be equally
well installed elsewhere too, not just in a virtual machine on the local
computer.

![RDFIO screenshot showing the in-built SPARQL endpoint](http://i.imgur.com/PMMIHZ4.png)

# Installation

## Prerequisites

The vagrant box requires the following softwares in order to set it up:

- [Virtualbox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Ansible](https://www.ansible.com/)
- An SSH Client

For Ubuntu 16.04, we provide brief installation instructions for them below:

### Virtualbox

Install on Ubuntu 16.04 with:

```bash
sudo apt-get install virtualbox
```

### Vagrant

Install on Ubuntu 16.04 by [downloading the debian installer](https://www.vagrantup.com/downloads.html) and installing it:

```bash
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo dpkg -i vagrant_1.8.1_x86_64.deb
```

### Ansible

**N.B:** Probably needs Ansible 2.x or higher! (Works well with 2.0.2, but **not** 1.7.2)

Install on Ubuntu 16.04 with:

```
sudo apt-get install ansible
```

### SSH client

(Already included in linux and OS X)

## Set up the Vagrant box

Clone this repo:

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

Log in with "Admin" and "changethis"

Finally, you need to click a button in the web interface, to set up the ARC2 store database tables:

1. Navigate to [localhost:8080/w/index.php/Special:RDFIOAdmin](http://localhost:8080/w/index.php/Special:RDFIOAdmin)
2. Click the "setup" button

To see the MediaWiki installation via the commandline, you can SSH in to your machine and enter the wiki installation folder like so:

```bash
vagrant ssh
cd /var/www/html/w
```

## STATUS

Things should work now, apart from any issues in [the issue tracker](https://github.com/rdfio/RDFIO/issues)

## Known issues

- If you try to run `vagrant provision` after running `vagrant up`, and haven't
  run the ARC2 setup via the wiki interface, you will get fat red errors.
