#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/my_gears/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "my_gear": {
      "name": "'"${NAME}"'",
      "quantity": "'"${QUANTITY}"'"
      }
    }' \
  --header "Authorization: Token token=$TOKEN"

echo
