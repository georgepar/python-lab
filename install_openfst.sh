#!/usr/bin/env bash

sudo apt-get install -y wget make gcc g++ checkinstall python-dev libz-dev

NUM_CPUS=`cat /proc/cpuinfo | grep proc | wc -l`
wget http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.6.1.tar.gz
cd openfst-1.6.1
./configure --enable-static=yes --enable-shared=no --with-pic=yes --enable-far --enable-python
make -j${NUM_CPUS}
sudo make install
