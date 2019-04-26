    apt-get update && apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get install -y build-essential \
    libtool \
    autotools-dev \
    automake \
    pkg-config \
    libssl-dev \
    libevent-dev \
    libzmq5 \
    fail2ban \
    bsdmainutils \
    python-virtualenv \
    libboost-system-dev \
    libboost-dev \
    libboost-filesystem-dev \
    libboost-chrono1.65.1 \
    libboost1.65-dev \
    libboost-chrono-dev \
    libboost-program-options-dev \
    libboost-test-dev \
    libboost-thread-dev \
    libboost-filesystem1.65.1 \
    libboost-program-options1.65.1 \
    libboost-thread1.65.1 \
    libdb5.3++ \
    virtualenv \
    nano \
    mc \
    wget \
    unzip \
    git \
    software-properties-common \
    htop && \
    add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get install -y libdb4.8-dev libdb4.8++-dev && \
    apt-get upgrade && \
    apt-get dist-upgrade -y && \
    apt-get autoremove -y && \
    cd / \
    git clone https://github.com/Moondex/MoonDEXCoin.git && \
    cd /MoonDEXCoin &&\
    git checkout tags/v2.0.1.1 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    rm -rf /MoonDEXCoin/ && \
    strip -s /usr/local/bin/*
