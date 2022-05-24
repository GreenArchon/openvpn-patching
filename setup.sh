#!/bin/bash

set -o pipefail
set -o nounset
set -o errexit
set -o errtrace

sudo apt-get install -y devscripts
sudo apt-get build-dep openvpn
apt-get source openvpn
cd openvpn-*
git apply ../*.patch
debchange
DEB_BUILD_OPTIONS='parallel=16' debuild -i -us -uc -b
cd ..
sudo apt-get install ./openvpn_*_amd64.deb
