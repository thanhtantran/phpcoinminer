FROM php:7.4-apache
MAINTAINER Tony Tran <thanhtan.tran@gmail.com>

env VERSION 1.13.2

WORKDIR /var/www/html

# Install the gmp and mcrypt extensions
RUN apt-get update -y && apt-get install libgmp-dev apt-utils  git -y
RUN docker-php-ext-install gmp bcmath

RUN git clone https://github.com/phpcoinn/node /var/www/html
#RUN php utils/miner.php http://45.15.160.190/ Pvey8useG7GENJgnfLDbf4E11LbD1q1ntq 80

ENTRYPOINT exec php utils/miner.php http://45.15.160.190/ Pvey8useG7GENJgnfLDbf4E11LbD1q1ntq 80