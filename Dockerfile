# https://source.android.com/setup/develop#repo
# https://source.android.com/setup/develop#installing-repo
FROM python:3-slim

# Update and upgrade
RUN apt-get update && apt-get -y upgrade

# Install bash and git
RUN apt-get install -y bash curl git gpg \
  && rm -rf /var/lib/apt/lists/*
  

# User management
RUN groupadd -g 1000 cmonkey && useradd -u 1000 -g 1000 -ms /bin/bash cmonkey

USER cmonkey

# Install repo
RUN mkdir -p ~/bin && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo  && chmod a+x ~/bin/repo 
ENV PATH "$PATH:/home/cmonkey/bin"

RUN git config --global user.email "cmonkey@cmonkey.com" && git config --global user.name "cmonkey"

WORKDIR /home/workspace
