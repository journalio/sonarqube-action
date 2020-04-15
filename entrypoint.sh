#!/usr/bin/env bash

set -e

if [[ -z "${INPUT_PASSWORD}" ]]; then
	SONAR_PASSWORD=""
else
	SONAR_PASSWORD="${INPUT_PASSWORD}"
fi

sonar-scanner \
	-Dsonar.host.url=${INPUT_HOST} \
	-Dsonar.projectKey=${INPUT_PROJECTKEY} \
	-Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
	-Dsonar.login=${INPUT_LOGIN} \
	-Dsonar.password=${INPUT_PASSWORD} \
	-Dsonar.sources=. \
	-Dsonar.tests=. \
	-Dsonar.sourceEncoding=UTF-8 \
	-Dsonar.scm.provider=git
