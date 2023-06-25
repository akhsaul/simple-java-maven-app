#!/usr/bin/env bash

echo 'Check maven version'
set -x
mvn -v
set +x

echo 'Check repository branch'
set -x
git branch
set +x

echo 'Check repository remote'
set -x
git remote
set +x

echo 'Check repository remote'
set -x
git push https://git.heroku.com/ci-cd-java-app-akhsaul.git master
set +x

