vagrant-ntopng
==============

This is a Vagrantfile for running a testing setup for ntopng.
The first step are:

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](http://downloads.vagrantup.com/)
- Install vagrant plugin ``vagrant plugin install vagrant-vbguest``
- cd to the cloned directory
- Type in ``vagrant up`` to your terminal window
- Profit

If you get errors about ntopng, issue a ``vagrant provision``.

###Ntopng Dashboard

First you have to start ntopng:

- Type in ``vagrant ssh`` to your terminal window (default password: vagrant)
- ``cd ntopng``
- ``sudo ./ntopng``

Now the dashboard can be accessed at [http://192.168.22.10:3000](http://192.168.22.10:3000).

###Nbox Dashboard

The dashboard can be accessed at [https://192.168.22.10](https://192.168.22.10).

##The headlines
<table>
<tr><th>IP Address</th><td>192.168.22.10</td></tr>
<tr><th>Ntopng Dashboard URL</th><td>http://192.168.22.10:3000</td></tr>
<tr><th>Nbox Dashboard URL</th><td>https://192.168.22.10</td></tr>
</table>

###Shared directory

After the vagrant up, you will find the ``trunk`` directory inside the cloned directory.
