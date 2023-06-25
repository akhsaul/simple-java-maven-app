#!/usr/bin/env bash

echo 'Deploy to Heroku'
set -x
git push heroku master
set +x