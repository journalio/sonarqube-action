#!/usr/bin/env bash

set -e

sonar-scanner \
	-Dsonar.host.url=${INPUT_HOST} \
	-Dsonar.projectKey=${INPUT_PROJECTKEY} \
	-Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
	-Dsonar.login=${INPUT_LOGIN} \
	-Dsonar.password=${INPUT_PASSWORD} \
	-Dsonar.sources=. \
	-Dsonar.tests=. \
	-Dsonar.sourceEncoding=UTF-8
