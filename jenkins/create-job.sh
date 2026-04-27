#!/usr/bin/env bash
set -euo pipefail

JENKINS_URL="http://seliiuvd07044.seli.gic.ericsson.se:8080/"
JOB_NAME="python-getting-started-bootstrap"
JENKINS_USER="${JENKINS_USER:-replace-me}"
JENKINS_TOKEN="${JENKINS_TOKEN:-replace-me}"
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
