#!/bin/bash

set -eu

IFS=',' read -ra hosts <<< "$HOSTS"
servers=()
for host in "${hosts[@]}"; do
  servers+=("server $host;")
done
export SERVERS=$( IFS=$'\n'; echo "${servers[*]}" )

/docker-entrypoint.sh "$@"
