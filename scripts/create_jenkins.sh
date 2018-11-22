#!/usr/bin/env bash
## create jenkins project
oc new-project cicd-dev
## create jenkins master
oc new-app jenkins-persistent
## create jenkins pipeline
oc create -f /root/ocp_advanced_deployment_homework/jenkins_template.yml
## create build config
oc start-build nodejs-sample-pipeline