FROM node:0.10
ENV VERSION=2.6.7
WORKDIR /gitbook
#RUN echo "registry=https://registry.npm.taobao.org" > ~/.npmrc
RUN npm install --global gitbook-cli && gitbook fetch ${VERSION}  
ADD . /gitbook
RUN gitbook install
