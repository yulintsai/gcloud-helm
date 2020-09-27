FROM google/cloud-sdk:latest

RUN apt-get update && apt-get install vim wget -y

RUN wget -q -O helm3.tar.gz https://get.helm.sh/helm-v3.3.4-linux-amd64.tar.gz

RUN tar -zxvf helm3.tar.gz && mv linux-amd64/helm /usr/local/bin/helm && rm helm3.tar.gz