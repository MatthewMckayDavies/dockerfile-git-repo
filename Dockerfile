# https://source.android.com/setup/develop#repo
# https://source.android.com/setup/develop#installing-repo
FROM python:3-alpine

# Install packages
RUN apk add curl git openssh gnupg


# User management
RUN addgroup --gid 1000 cmonkey
RUN adduser --ingroup cmonkey --uid 1000 --disabled-password --gecos "" cmonkey

USER cmonkey

# Install repo
RUN mkdir -p ~/bin && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo  && chmod a+x ~/bin/repo 
ENV PATH "$PATH:/home/cmonkey/bin"

RUN git config --global user.email "cmonkey@cmonkey.com" && git config --global user.name "cmonkey"

WORKDIR /home/workspace
ENTRYPOINT ["repo"]
