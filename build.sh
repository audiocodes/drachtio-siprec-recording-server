#!/bin/sh

set -ex

npm config set @ac-saas:registry https://artifactory.corp.audiocodes.com/artifactory/api/npm/saas-infra-npm-local

export PACKAGE_NAME=drachtio-siprec
export NO_TESTS=1
export DOCKER_COMPOSE_FILE=docker-compose.yml

npx -y -p @ac-saas/byoc-build@latest docker-build "$@"
