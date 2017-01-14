#!/bin/bash

repository=pvansia/scala-sbt
tag=0.13.13

docker build -t ${repository}:${tag} .