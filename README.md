Welcome!
========

You have come across the intersection of the OpenDaylight & Openstack Project. It aims to tame your (cloud) networking!

Background:
===========

There is a massive effort underway to improve the stability of using Opendaylight as the layer 2 solution for Openstack. Above are a set of scripts used by an Intel team to find bugs and failing Tempest tests. The scripts are run by a Jenkins server, which deploys Vagrant VMs to build each scenario and run the appropriate tests. 

External Resources:
===================

OpenDaylight: 
<https://opendaylight.org>

Openstack:
<https://openstack.org>

Make Magic Work:
================

Vagrant Up
-provision with tempest.api.network Vagrantfile
-mount host webroot directory to vagrant VM
-use latest Ubuntu vagrant box
-run Setup.sh
-cache the pip configurations
-copy local.conf stored on host into vagrant's devstack directory
-run build.sh
-run networkapitest.sh
-run copyandclean.sh

Setup.sh
-update box with all latest Ubuntu packages
-add vagrant user as a sudoer
-install python packages
-remove python-six
-clone devstack
-download latest OVS package
-build newest OVS package

Build.sh
-run stack.sh

Networkapitest.sh
-initialize testr
-make sure pip is installed
-remove python-six again
-run "testr run tempest.api.network" with subunit options
-ensure results directory is made (the one mounted to host webroot)
-use subunit to convert test results into an html file
-remove any existing files/logs
-copy new html file and test results logs to mounted directory

Copyandclean.sh
-remove symbolic links (.log, .summary, .log.summary files)
-copy html file from mounted directory to second webroot
-copy new logs from mounted directory to second webroot
-remove existing log zipped folder
-create new zipped log folder
-run grep.sh
-push all new files up to github

Grep.sh
-grep the summary of all tests from html file
-remove html tags
-get number of Passed/Failed/Skip tests
-put numbers into text file (to later be used to generate javascript graphs)
 

Contacts:
========= 

Please forward any questions to any of the following

Ankur Gupta <ankur.gupta@intel.com>

Pramod Jayathirth <pramod.raghavendra.jayathirth@intel.com>
