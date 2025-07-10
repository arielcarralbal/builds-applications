#!/bin/env bash

oc new-app --name vertx-site \
  --build-env MAVEN_MIRROR_URL=http://nexus-route-nexus-infra.apps-crc.testing/repository/maven-central-proxy/ \
  --env JAVA_APP_JAR=vertx-site-1.0.0-SNAPSHOT-fat.jar \
  -i redhat-openjdk18-openshift:1.8 \
  --context-dir vertx-site \
  https://github.com/arielcarralbal/builds-applications
