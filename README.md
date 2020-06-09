* `sudo apt-get build-dep openvpn && apt-get source openvpn`
* apply patch
* `debchange`
* `dpkg-buildpackage -rfakeroot -uc -b`
