#!/usr/bin/env bash

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="local.ao.openlmis.org:2376"
export CREDENTIALS_SUB_DIRECTORY="local_installation_test_env"
export DOCKER_CERT_PATH="${PWD}/../../credentials/${CREDENTIALS_SUB_DIRECTORY}"

/usr/local/bin/docker-compose pull

. after_start.sh &&
../shared/restart.sh $1