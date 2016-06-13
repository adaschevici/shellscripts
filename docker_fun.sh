#!/bin/bash

function clean_untagged() {
  ARRAY=$(docker images | grep "^<none>" | awk '{print $3}')
  if [ -n "$ARRAY" ] ; then
    docker rmi $ARRAY
  fi
}
