#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quotes"
ID="1"
TOKEN="BAhJIiVjMDQ2MDIyMjViNjNlZWUzMjI0YTc1NGM1OWYzYjUxOAY6BkVG--6e9bb980a7f524b0b020233b859ae5f0d5fb7ab3"
curl "${API}${URL_PATH}"/${ID} \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
