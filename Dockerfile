FROM ubuntu:24.04

# Install required packages
RUN apt update -y && \
    apt install -y --no-install-recommends \
        curl \
        ca-certificates \
        build-essential \
        && \
    apt clean all && \
    rm -rf /var/lib/apt/lists/*

# Download and verify the get-gauche.sh script
RUN curl -fsSL https://raw.githubusercontent.com/shirok/get-gauche/master/get-gauche.sh -o get-gauche.sh && \
    echo "c3d9a86135ad52b7b840e2608cd2707a5d66a963b13ec3d87ca5cfbad493802d  get-gauche.sh" | sha256sum --check -

# RUN bash get-gauche.sh --auto --prefix=/bin

ENV PATH="/root/.gauche/bin:${PATH}"
