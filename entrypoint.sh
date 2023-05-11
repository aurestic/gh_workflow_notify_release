#!/bin/sh
set -eu

echo "GITHUB_REPOSITORY: $GITHUB_REPOSITORY";

ENDPOINTS="https://diagram.aurestic.com/github/release"
ENDPOINTS="${ENDPOINTS} https://aures.aurestic.com/github/release"

for endpoint in ${ENDPOINTS};do
    curl --header "Content-Type: application/json" \
        --request POST \
        --data '{"params": {"repository":"'$GITHUB_REPOSITORY'"}}' \
        "${endpoint}";
done
