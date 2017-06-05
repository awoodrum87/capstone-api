#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quotes"
DATE="06-06-2017"
TEXT="an updated test quote"
ID="3"
TOKEN="BAhJIiVjMDQ2MDIyMjViNjNlZWUzMjI0YTc1NGM1OWYzYjUxOAY6BkVG--6e9bb980a7f524b0b020233b859ae5f0d5fb7ab3"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "quote": {
      "date": "'"${DATE}"'",
      "quote_text": "'"${TEXT}"'"
    }
  }'

echo
