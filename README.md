# php-analyzer

Container to analyze PHP projects

## Introduction

You can use following commands directly or create a proxy command for each one like this:

```sh
phpcs() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpcs "$@"
}
```

### [Code Style + Fixer](https://github.com/squizlabs/PHP_CodeSniffer)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpcs`
`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpcbf`

### [https://github.com/FriendsOfPHP/PHP-CS-Fixer](https://github.com/squizlabs/PHP_CodeSniffer)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer php-cs-fixer`

### [Mess Detector](https://github.com/phpmd/phpmd)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpmd`

### [Copy Paste Detector](https://github.com/sebastianbergmann/phpcpd)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpcpd`

### [Dead Code Detector](https://github.com/sebastianbergmann/phpdcd)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpdpd`

### [Line of Codes](https://github.com/sebastianbergmann/phploc)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phploc`

### [Dependency Analysis](https://github.com/mamuz/PhpDependencyAnalysis)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpda`

### [Security Checker](https://github.com/sensiolabs/security-checker)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer security-checker`

### [PhpMetrics](https://github.com/phpmetrics/PhpMetrics)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer phpmetrics`

### [JMeter](http://jmeter.apache.org)

`docker run --rm -it -v $(pwd):/app mamuz/php-analyzer jmeter -n -t TESTPLAN.jmx`
