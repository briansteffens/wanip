exec:

compile:

install: wanip
	sudo ls > /dev/null
	sudo mkdir /etc/wanip
	sudo cp etc/client.conf /etc/wanip/client.conf
	sudo cp wanip /usr/local/bin/wanip

uninstall:
	sudo rm -r /etc/wanip
	sudo rm /usr/local/bin/wanip

