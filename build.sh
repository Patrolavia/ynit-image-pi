#!/bin/bash

set -e
for TAG in latest oldstable stable testing wheezy jessie stretch
do
    sed "s/%tag%/$TAG/g" template | docker build -t patrolavia/ynit-image-pi -
done

docker push patrolavia/ynit-image-pi
