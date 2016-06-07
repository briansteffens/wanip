wanip
=====

Tiny little client/server utility for finding your IP address on the internet.

# Client

To download and install:

```
git clone https://github.com/briansteffens/wanip
cd wanip
sudo make install
```

Edit /etc/wanip/client.conf if desired to change the web server the client will
get its IP from.

Usage:

```
wanip
```

Performs an HTTP GET to the URL in /etc/wanip/client.conf, and writes the
response to stdout.

To uninstall (from git directory):
```
sudo make uninstall
```

# Server

The server is an nginx config snippet. To install, include it into your
nginx config. Example:

```
http {
    server {
        listen 80;
        server_name localhost;

        include /path/to/wanip/wanip.nginx.conf;
    }
}
```

Once nginx is restarted, you should be able to curl it:

```bash
curl http://localhost/wanip
```
