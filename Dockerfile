# FROM    resin/rpi-raspbian:wheezy-2015-01-15
FROM    ubuntu:14.04

ENV     DEBIAN_FRONTEND noninteractive

RUN     locale-gen en_US.UTF-8
ENV     LANG en_US.UTF-8
ENV     LANGUAGE en_US:en
ENV     LC_ALL en_US.UTF-8

RUN     apt-get install -y wget && \
        wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/mopidy.list && \
        apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 78FD980E271D2943

RUN     apt-get update && \
        apt-get install -y \
            python-dev \
            python-pip \
            gstreamer0.10-plugins-bad \
            mopidy

RUN     pip install -U setuptools pip

RUN     pip install Mopidy-Youtube Mopidy-MusicBox-Webclient

ADD     mopidy.conf /etc/mopidy/mopidy.conf

# CMD     ['service', 'mopidy', 'start']

# TODO: needs this to run as a service. How do we choose what to do?
sudo dpkg-reconfigure mopidy

EXPOSE  6680



# configure wifi driver

# setup wifi credentials



#-----

$ sudo apt-get install nginx-extras

ADD     open_door/conf/default /etc/nginx/default

ADD     open_door/bin/open_the_door.py /usr/local/bin/

ADD     open_door/html/open.html /usr/share/nginx/www

RUN     chmod +x /usr/local/bin/open_the_door.py
