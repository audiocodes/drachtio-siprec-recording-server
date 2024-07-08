#!/bin/sh

set -ex

npm config set @ac-saas:registry https://artifactory.corp.audiocodes.com/artifactory/api/npm/saas-infra-npm-local

export PACKAGE_NAME=drachtio-siprec

npx -y -p @ac-saas/byoc-build@latest docker-build "$@"
