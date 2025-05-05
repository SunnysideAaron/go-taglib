FROM ghcr.io/webassembly/wasi-sdk:sha-5e4756e

WORKDIR /go-taglib

RUN apt-get update 
RUN apt-get install -y --no-install-recommends golang-1.23-go
RUN apt-get install -y --no-install-recommends binaryen
RUN rm -rf /var/lib/apt/lists/*
    
ENV PATH="/usr/lib/go-1.23/bin:${PATH}"