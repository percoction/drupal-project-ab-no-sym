#!/bin/bash

docker run --rm -t -v $(pwd):/var/www:Z -v php-builds:/usr/local/phpenv/versions -p 8888:80 -e 'PHP_VERSION=7.2.5' -e 'XDEBUG2HOST="serverName=docroot_experiment"'  --name drupal_project_ab -d curatorwik/docker_host_env
