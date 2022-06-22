#!/bin/sh
#
# Copyright (c) 2022.
# Julio Cezar Riffel<julioriffel@gmail.com>
#

if [ "$1" = "" ]; then
  echo "Usage: $0 <version argument required>"
  exit
fi

git pull
#docker build -t alert-panel:$1 -f Dockerfile . --no-cache
docker-compose -f docker-compose-prod.yml up --build -d
