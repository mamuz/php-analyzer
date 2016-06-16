# php-analyzer [WIP]

Container to analyze PHP projects

## Introduction

`docker pull mamuz/php-analyzer`

### [Code Style](https://github.com/squizlabs/PHP_CodeSniffer)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpcs`

### [Mess Detector](https://github.com/phpmd/phpmd)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpmd`

### [PhpUnit](https://github.com/sebastianbergmann/phpunit)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpunit`

### [Copy Paste Detector](https://github.com/sebastianbergmann/phpcpd)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpcpd`

### [Dead Code Detector](https://github.com/sebastianbergmann/phpdcd)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpdpd`

### [Line of Codes](https://github.com/sebastianbergmann/phploc)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phploc`

### [PDepend](https://github.com/pdepend/pdepend)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer pdepend`

### [Dependency Analysis](https://github.com/mamuz/PhpDependencyAnalysis)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpda`

### [Security Checker](https://github.com/sensiolabs/security-checker)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer security-checker`

### [PhpMetrics](https://github.com/phpmetrics/PhpMetrics)

`docker run --rm -it -v $(shell pwd):/app ps-services/php-analyzer phpmetrics`
