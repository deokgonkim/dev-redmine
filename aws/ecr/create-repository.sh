#!/bin/bash

export REPOSITORY_NAME=dev/redmine

aws ecr \
create-repository \
--repository-name $REPOSITORY_NAME
