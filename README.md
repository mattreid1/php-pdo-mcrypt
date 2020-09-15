# Docker PHP 5.6 with MySQL (PDO) and mcrypt
A Dockerized PHP 5.6 with MySQL (PDO) and mcrypt implementation.

## Setup
1. Install [Docker](https://docs.docker.com/engine/install/).
2. Download the image using `docker pull mattreid1/php-pdo-mcrypt`
3. Run `docker run -v "$(pwd)":/var/www/html/ -p 8080:80 mattreid1/php-pdo-mcrypt` in the directory you want to serve on port 8080