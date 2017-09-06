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

# Updates

**Sep 4, 2017:** Our paper on RDFIO was just published:<br>
Lampa S, Willighagen E, Kohonen P, King A, Vrandečić D, Grafström R, Spjuth O<br> 
[RDFIO: extending Semantic MediaWiki for interoperable biomedical data management](https://jbiomedsem.biomedcentral.com/articles/10.1186/s13326-017-0136-y)<br>
*Journal of Biomedical Semantics*. **8**:35 (2017). DOI: [10.1186/s13326-017-0136-y](https://dx.doi.org/10.1186/s13326-017-0136-y).

# Installation

## Prerequisites

The vagrant box requires the following softwares in order to set it up:

- [Virtualbox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Ansible](https://www.ansible.com/)
- An SSH Client (Already included in Linux and OS/X)

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

```bash
sudo apt-get install ansible
```

## Bring up the Vagrant box

Clone this repo:

```bash
git clone https://github.com/rdfio/rdfio-vagrantbox
```
Enter the cloned folder:

```bash
cd rdfio-vagrantbox
```

... and let vagrant take care of the rest:

```bash
vagrant up
```

Surf in to your new MediaWiki installation on:

* [localhost:8080/w](http://localhost:8080/w)

Log in with "Admin" and "changethis".

Done!

To see the MediaWiki installation via the commandline, you can SSH in to your machine and enter the wiki installation folder like so:

```bash
vagrant ssh
cd /var/www/html/w
```

## Known issues

After bringing up the vagrant box, you might see an error like this:

```bash
==> virtualbox: mesg: ttyname failed: Inappropriate ioctl for device
```

This is a minor glitch with vagrant, and nothing to worry about.
