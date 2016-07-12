FROM node:5
ENV VERSION=3.1.1
#RUN echo "registry=https://registry.npm.taobao.org" > ~/.npmrc
RUN npm install --global gitbook-cli && gitbook fetch ${VERSION}  
RUN gitbook install
