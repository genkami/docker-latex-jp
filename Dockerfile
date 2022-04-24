FROM ubuntu:jammy
MAINTAINER Genta Kamitani <oftn.mofumofu@gmail.com>

RUN   apt update && \
      apt -y install \
            texlive \
            texlive-lang-cjk \
            xdvik-ja \
            dvipsk-ja \
            gv \
            texlive-fonts-recommended \
            texlive-fonts-extra \
            nkf && \
      apt autoremove && \
      apt clean && \
      rm -rf /var/lib/apt/lists/*

COPY bin/build /bin/

WORKDIR /work
VOLUME ["/work"]
