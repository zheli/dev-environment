#!/bin/bash

HOST=$1
USER=$2

usage() {
  echo "Usage: $0 [host string] [username]"
  exit 1
}

if [ -z $HOST ]
then
  echo "Error: missing host string"
  usage
fi

fab -H $HOST -u $USER fullstrap_minions
