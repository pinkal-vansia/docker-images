#!/bin/bash

repository=pvansia/node
tag=7.6-dev

docker build -t ${repository}:${tag} .