FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN apt install -y nodejs

WORKDIR /Workshop

COPY ReadWriteTask CRUD

COPY README.md package.json package-lock.json tsconfig.json./

RUN npm install
