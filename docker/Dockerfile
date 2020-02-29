FROM ubuntu:17.10

RUN apt-get update && apt-get install -y \
    ansible \
    aptitude \
    curl libcurl4-openssl-dev build-essential gfortran cmake libmysqlclient-dev xorg-dev libglu1-mesa-dev libfftw3-dev libssl-dev libxml2-dev git unzip python-pip autoconf automake autopoint texinfo gettext libtool libtool-bin pkg-config bison flex libperl-dev libbz2-dev libboost-all-dev swig liblzma-dev libnanomsg-dev libyaml-cpp-dev rsync lsb-release environment-modules \
 && rm -rf /var/lib/apt/lists/*

#RUN pip install matplotlib numpy certifi ipython==5.1.0 ipywidgets ipykernel notebook metakernel pyyaml

#COPY playbook.yml /tmp

#RUN ansible-playbook -c local -i "localhost," /tmp/playbook.yml

CMD /bin/bash
