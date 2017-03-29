#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "comment": "'"${COMMENT}"'"
      }
    }' \
  --header "Authorization: Token token=$TOKEN"

echo
