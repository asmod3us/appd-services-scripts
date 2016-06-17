#!/bin/bash

export JAVA_BIN="/usr/bin/java"

export APPD_RUNTIME_USER="ubuntu"

export APPDYNAMICS_HOME=/home/ubuntu/AppDynamics
export CONTROLLER_HOME=$APPDYNAMICS_HOME/controller
export JAVA_AGENT_HOME=$APPDYNAMICS_HOME/javaagent
export DB_AGENT_HOME=$APPDYNAMICS_HOME/dbagent
export MACHINE_AGENT_HOME=$APPDYNAMICS_HOME/machineagent

export APPDYNAMICS_CONTROLLER_HOST_NAME=localhost
export CONTROLLER_HOST_NAME=$APPDYNAMICS_CONTROLLER_HOST_NAME
export APPDYNAMICS_CONTROLLER_PORT=8090
export APPDYNAMICS_CONTROLLER_SSL_ENABLED=false
export APPDYNAMICS_AGENT_ACCOUNT_NAME=customer1
export APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY=0d486055-bed8-423b-b958-54ac88324226
export APPDYNAMICS_AGENT_UNIQUE_HOST_ID=$HOSTNAME

AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.hostName=$APPDYNAMICS_CONTROLLER_HOST_NAME"
AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.port=$APPDYNAMICS_CONTROLLER_PORT"
AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.ssl.enabled=$APPDYNAMICS_CONTROLLER_SSL_ENABLED"
AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.accountName=$APPDYNAMICS_AGENT_ACCOUNT_NAME"
AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.accountAccessKey=$APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY"
AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.uniqueHostId=$APPDYNAMICS_AGENT_UNIQUE_HOST_ID"
export AGENT_OPTIONS