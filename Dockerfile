FROM alpine:3.3

RUN apk add --no-cache bash curl git graphviz php-cli php-json php-phar php-openssl php-dom php-ctype

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && composer global require squizlabs/php_codesniffer && ln -s /root/.composer/vendor/bin/phpcs /usr/local/bin/phpcs \
 && composer global require phpmd/phpmd && ln -s /root/.composer/vendor/bin/phpmd /usr/local/bin/phpmd \
 && composer global require phpunit/phpunit && ln -s /root/.composer/vendor/bin/phpunit /usr/local/bin/phpunit \
 && composer global require sebastian/phpcpd && ln -s /root/.composer/vendor/bin/phpcpd /usr/local/bin/phpcpd \
 && composer global require sebastian/phpdcd && ln -s /root/.composer/vendor/bin/phpdcd /usr/local/bin/phpdcd \
 && composer global require phploc/phploc && ln -s /root/.composer/vendor/bin/phploc /usr/local/bin/phploc \
 && composer global require pdepend/pdepend && ln -s /root/.composer/vendor/bin/pdepend /usr/local/bin/pdepend \
 && composer global require mamuz/php-dependency-analysis && ln -s /root/.composer/vendor/bin/phpda /usr/local/bin/phpda \
 && composer global require sensiolabs/security-checker && ln -s /root/.composer/vendor/bin/security-checker /usr/local/bin/security-checker \
 && composer global require phpmetrics/phpmetrics && ln -s /root/.composer/vendor/bin/phpmetrics /usr/local/bin/phpmetrics

WORKDIR /app

CMD [""]
