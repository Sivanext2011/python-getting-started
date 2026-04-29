#!/usr/bin/env bash
set -euo pipefail

JENKINS_URL="http://seliiuvd02756.seli.gic.ericsson.se:8080/"
JOB_NAME="test-bootstrap"
JENKINS_USER="admin"
JENKINS_TOKEN="19bc0766bcfa495b8a837078b7313420"
CRUMB=$(curl -s --user "$JENKINS_USER:$JENKINS_TOKEN" "$JENKINS_URL/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)")

curl -sS -X POST \
  --user "$JENKINS_USER:$JENKINS_TOKEN" \
  -H "$CRUMB" \
  -H "Content-Type: application/xml" \
  --data-binary @jenkins/config.xml \
  "$JENKINS_URL/createItem?name=$JOB_NAME"

curl -sS -X POST \
  --user "$JENKINS_USER:$JENKINS_TOKEN" \
  -H "$CRUMB" \
  "$JENKINS_URL/job/$JOB_NAME/build?delay=0sec"
