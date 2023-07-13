#!/bin/sh
CICD=true
WORKSPACE=/home/ubuntu/
JOB_BASE_NAME=Test_demo
BUILD_NUMBER=10
if [ $CICD = true ]
then
 echo "CI/CD pipe line check"
file="${WORKSPACE}/test.sh"
REPORTNAME=${JOB_BASE_NAME}_${BUILD_NUMBER}.Test_demo_10
echo "CICD Check starting"
  if [ -f "$file" ]; then
        echo "testReport file found sending to artifactory"
       curl -X PUT -T test.sh -u admin http://54.67.5.29:8082/artifactory/example-repo-local/
   else
   echo "testReport file not found"
  fi
fi
