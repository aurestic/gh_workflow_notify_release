#!/bin/sh
set -eu

echo "GITHUB_REPOSITORY: $GITHUB_REPOSITORY";

curl --header "Content-Type: application/json" \
    --request POST \
    --data '{"params": {"repository":"'$GITHUB_REPOSITORY'"}}' \
    https://diagram.aurestic.com/github/release;

curl --header "Content-Type: application/json" \
    --request POST \
    --data '{"params": {"repository":"'$GITHUB_REPOSITORY'"}}' \
    https://aures.aurestic.com/github/release;
