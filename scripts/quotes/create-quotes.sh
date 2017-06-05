#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quotes"
DATE="05-06-2017"
TEXT="test quote"
TOKEN="BAhJIiVjMDQ2MDIyMjViNjNlZWUzMjI0YTc1NGM1OWYzYjUxOAY6BkVG--6e9bb980a7f524b0b020233b859ae5f0d5fb7ab3"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quote": {
      "date": "'"${DATE}"'",
      "quote_text": "'"${TEXT}"'"
    }
  }'

echo
