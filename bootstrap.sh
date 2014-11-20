#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential debootstrap python-pip automake libgmp3-dev libltdl-dev libunistring-dev libffi-dev ncurses-dev imagemagick libssl-dev pkg-config zlib1g-dev gettext git curl subversion check intltool gperf flex bison xmlto php5 expect libgc-dev mercurial cython lzip cmake
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
pip install -U pip==1.5.4 wheel==0.23 httpie
git clone https://github.com/SynoCommunity/spksrc.git /home/vagrant/spksrc
cd /home/vagrant/spksrc && make setup
