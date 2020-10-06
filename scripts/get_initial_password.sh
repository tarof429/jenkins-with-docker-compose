#!/bin/sh

if [ -f /.dockerenv ]; then
    echo "Cannot run this script inside the container"
    exit 1
fi

docker-compose run jenkins cat /var/jenkins_home/secrets/initialAdminPassword
