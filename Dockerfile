FROM nimmis/apache:14.04

MAINTAINER genti <gentius2@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y language-pack-en-base && \
export LC_ALL=en_US.UTF-8 && \
export LANG=en_US.UTF-8 && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:ondrej/php && \
apt-get update && \
apt-get install -y php5.6 php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip php5.6-soap && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
