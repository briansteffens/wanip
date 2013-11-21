wanip
=====

Tiny client/server IP check scripts.


client
======
To download and install:
```
git clone https://github.com/Tiltar/wanip
cd wanip
sudo make install
```
Edit /etc/wanip/client.conf if desired to change the web server the client will get its IP from.

=
Usage:
```
wanip
```
Performs an HTTP GET to the URL in /etc/wanip/client.conf, and writes the response to stdout.

=
To uninstall (from git directory):
```
sudo make uninstall
```


server
======
The server is just a one line PHP script. For example, if using Apache and a Debian-based system:
```
git clone https://github.com/Tiltar/wanip
cd wanip
sudo cp getip.php /var/www/getip.php
```
