FROM alpine:3.7

MAINTAINER himuhasib@gmail.com

RUN apk add --no-cache \
		nodejs \
		openssh-client \
		php7 \
		php7-curl \
		php7-json \
		php7-mbstring \
		php7-mcrypt \
		php7-mysqli \
		php7-openssl \
		php7-pdo \
		php7-phar \
		php7-xml \
		php7-zip \
		php7-zlib \
		rsync \
		tar \
		yarn \
		zip

ADD getcomposer.sh getcomposer.sh
RUN chmod u+x getcomposer.sh
RUN ./getcomposer.sh
RUN mv composer.phar /usr/local/bin/composer
RUN rm getcomposer.sh
