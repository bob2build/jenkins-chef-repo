# Jenkins

A jenkins server install with chef-solo and vagrant

## Overview

This cookbook installs java, jenkins and few plugins such as git, rvm, chef-identity-plugin.

## Usage

`vagrant up` will bring up the instance with jenkins server installed on http://10.1.1.102:8080

`vagrant provision` will re-run the chef-client on the virtual machine in case of of cookbook changes or failures in previous run.

`vagrant destroy` will terminate the virtual machine.

## TODO
* Add Tests
* Add Chef provisioning
* Add support for configurable list of plugins
