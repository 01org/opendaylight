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

Vagrant Up <br />
-provision with tempest.api.network Vagrantfile <br />
-mount host webroot directory to vagrant VM <br />
-use latest Ubuntu vagrant box <br />
-run Setup.sh <br /> 
-cache the pip configurations <br />
-copy local.conf stored on host into vagrant's devstack directory <br />
-run build.sh <br />
-run networkapitest.sh <br />
-run copyandclean.sh <br />

Setup.sh <br />
-update box with all latest Ubuntu packages <br />
-add vagrant user as a sudoer <br />
-install python packages <br />
-remove python-six <br />
-clone devstack <br />
-download latest OVS package <br />
-build newest OVS package <br />

Build.sh <br />
-run stack.sh <br />

Networkapitest.sh <br />
-initialize testr <br />
-make sure pip is installed <br />
-remove python-six again <br />
-run "testr run tempest.api.network" with subunit options <br />
-ensure results directory is made (the one mounted to host webroot) <br />
-use subunit to convert test results into an html file <br />
-remove any existing files/logs <br />
-copy new html file and test results logs to mounted directory <br />

Copyandclean.sh <br />
-remove symbolic links (.log, .summary, .log.summary files) <br />
-copy html file from mounted directory to second webroot <br />
-copy new logs from mounted directory to second webroot <br />
-remove existing log zipped folder <br />
-create new zipped log folder <br />
-run grep.sh <br/>
-push all new files up to github <br />

Grep.sh <br />
-grep the summary of all tests from html file <br />
-remove html tags <br />
-get number of Passed/Failed/Skip tests <br />
-put numbers into text file (to later be used to generate javascript graphs) <br />
 

Contacts:
========= 

Please forward any questions to any of the following

Ankur Gupta <ankur.gupta@intel.com>

Pramod Jayathirth <pramod.raghavendra.jayathirth@intel.com>
