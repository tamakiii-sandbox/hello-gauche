FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        build-essential \
        zlib1g-dev \
        libmbedtls-dev \
        curl \
        && \
    apt clean all && \
    rm -rf /var/lib/apt/lists/*

RUN cd /tmp && \
    curl -fsSL https://github.com/shirok/Gauche/releases/download/release0_9_15/Gauche-0.9.15.tgz -o Gauche-0.9.15.tgz && \
    echo "3643e27bc7c8822cfd6fb2892db185f658e8e364938bc2ccfcedb239e35af783 Gauche-0.9.15.tgz" | sha256sum --check - && \
    tar -xzf Gauche-0.9.15.tgz && \
    mv Gauche-0.9.15 /usr/local/src/gauche && \
    rm Gauche-0.9.15.tgz

RUN cd /usr/local/src/gauche && \
    ./configure && \
    make && \
    make install

RUN gosh -e '(print "Gauche installed successfully!")'
