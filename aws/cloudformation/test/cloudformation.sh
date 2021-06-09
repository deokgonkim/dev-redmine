#!/bin/bash

if [ -f .env ]; then
    source .env
else
    echo "Prepare .env file before deploying"
    exit 1
fi


aws cloudformation \
deploy \
--template-file cloudformation.yml \
--stack-name redmine-test \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-overrides \
"RedmineDbPostgres=$REDMINE_DB_POSTGRES" \
"RedmineDbUsername=$REDMINE_DB_USERNAME" \
"RedmineDbPassword=$REDMINE_DB_PASSWORD"
