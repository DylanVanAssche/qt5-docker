FROM ubuntu:XX.XX
MAINTAINER Dylan Van Assche <dylan.van.assche@protonmail.com> 

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt update &&                  \
    apt upgrade -y &&              \
    apt dist-upgrade -y &&         \
    apt install -y                 \
        git                        \
        wget                       \
        xvfb                       \
        flex                       \
        dh-make                    \
        debhelper                  \
        checkinstall               \
        fuse                       \
        snapcraft                  \
        bison                      \
        libxcursor-dev             \
        libxcomposite-dev          \
        software-properties-common \
        build-essential            \
        libssl-dev                 \
        libxcb1-dev                \
        libx11-dev                 \
        libgl1-mesa-dev            \
        libudev-dev                \
        qt5-default                \
        qttools5-dev               \
        qtdeclarative5-dev         \
        qtpositioning5-dev         \
        qtbase5-dev              &&\
    apt clean

WORKDIR /home/root/

CMD ["/bin/bash"]
