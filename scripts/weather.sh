#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/search/weather"
TOKEN="BAhJIiUzM2E3M2NlYzg0YjUyNWQwMzkxZTA5YjZlOTg5ZTU0NgY6BkVG--50c401cac91a8106f8e6817df8664babf7cc49bc"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
   --header "Authorization: Token token=$TOKEN" \
  --data '{
    "search": {
      "query": "'"${QUERY}"'"
    }
  }'
