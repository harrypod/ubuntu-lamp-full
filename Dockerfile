FROM ubuntu:xenial

MAINTAINER HarryPod

RUN apt-get update \
    && apt-get -q -y dist-upgrade \
    && DEBIAN_FRONTEND=noninteractive \
    apt-get -q -y install --no-install-recommends \
    apache2 \
    sqlite3 \
	vim \
	nmap \
	dnsutils \
	net-tools \
	mysql-client \
	iputils-ping \
    mysql-server \
    php \
    php-sqlite3 \
    libapache2-mod-php \
    php-mcrypt \
    php-mysql \
    curl \
    wget \
    zip \
    tar \
    screen \
    dos2unix \
    sudo \
    supervisor \
    strace \
    nmon \
    nodejs \ 
    gcc \
    make \
    libmysqlclient-dev \
    libperl-dev \
    man \    
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


EXPOSE 80
EXPOSE 443
EXPOSE 3306