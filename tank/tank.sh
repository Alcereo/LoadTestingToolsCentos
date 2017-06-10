#!/usr/bin/env bash

#docker run --rm \
#--net host \
#direvius/yandex-tank
##-v $(pwd):/var/loadtest \
##-v $HOME/.ssh:/root/.ssh \

docker build --tag test_service ./ &&\
docker run -i \
--rm \
--name centos_test_tank \
--network "none"    \
test_service

#--cpus 1 \
#--memory 200MB \
