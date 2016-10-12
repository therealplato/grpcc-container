FROM node:4.6-wheezy
MAINTAINER coreservices@namely.com
# This dockerfile lives at github.com/therealplato/grpcc-container

RUN npm install -g --unsafe-perm https://github.com/therealplato/grpcc
# ^My fork works around https://github.com/njpatel/grpcc/issues/10
# --unsafe-perm works around https://github.com/grpc/grpc/issues/6435

COPY README.md /README.md
CMD cat /README.md
