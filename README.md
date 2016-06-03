# DevBox-RDFIO
*Vagrant box backed by Docker or Virtualbox, with Ansible provisioning*

A Vagrant box (Virtualbox or Docker as providers) with Ansible provisioning
for setting up development environment for developing RDFIO.


## Prerequisites

* Vagrant
* Ansible
* SSH client

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

* http://localhost:8080/w

## STATUS

In general: Work in progress!

In more detailed terms:

- [x] Install PHP
- [x] Install MediaWiki
- [x] Install Semantic MediaWiki
- [ ] Install RDFIO
