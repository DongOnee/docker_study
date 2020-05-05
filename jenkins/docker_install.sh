#!/bin/sh 

apt-get update && \
apt-get -y install --no-install-recommends apt-utils \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    zip \
    unzip \
    software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey;
apt-key add /tmp/dkey && \
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
apt-get update && \
apt-get install -y docker-ce docker-ce-cli containerd.io
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


# apt-get update;
# apt-get install -y --no-install-recommends apt-utils;
# apt-get install -y apt-transport-https ca-certificates curl gnupg2 zip unzip software-properties-common;
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -;
# add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
# apt-get update;
# apt-get install -y docker-ce docker-ce-cli containerd.io