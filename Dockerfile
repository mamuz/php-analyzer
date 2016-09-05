FROM alpine:3.3

RUN apk add --no-cache bash curl git graphviz alpine-sdk autoconf openjdk7-jre-base \
    php-dev php-cli php-json php-phar php-openssl php-dom php-ctype

RUN curl -L http://xdebug.org/files/xdebug-2.3.3.tgz | tar zx
RUN cd xdebug-2.3.3 && phpize && ./configure && make -j && make install

RUN curl -L http://apache.mirror.digionline.de/jmeter/binaries/apache-jmeter-3.0.tgz | tar -zx \
 && ln -s /apache-jmeter-3.0/bin/jmeter /usr/local/bin/jmeter

COPY etc /etc

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && composer global require squizlabs/php_codesniffer && ln -s /root/.composer/vendor/bin/phpcs /usr/local/bin/phpcs \
 && composer global require phpmd/phpmd && ln -s /root/.composer/vendor/bin/phpmd /usr/local/bin/phpmd \
 && composer global require sebastian/phpcpd && ln -s /root/.composer/vendor/bin/phpcpd /usr/local/bin/phpcpd \
 && composer global require sebastian/phpdcd && ln -s /root/.composer/vendor/bin/phpdcd /usr/local/bin/phpdcd \
 && composer global require phploc/phploc && ln -s /root/.composer/vendor/bin/phploc /usr/local/bin/phploc \
 && composer global require mamuz/php-dependency-analysis && ln -s /root/.composer/vendor/bin/phpda /usr/local/bin/phpda \
 && composer global require sensiolabs/security-checker && ln -s /root/.composer/vendor/bin/security-checker /usr/local/bin/security-checker \
 && composer global require phpmetrics/phpmetrics && ln -s /root/.composer/vendor/bin/phpmetrics /usr/local/bin/phpmetrics

WORKDIR /app

CMD [""]
