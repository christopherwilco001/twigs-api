curl "http://localhost:4741/twigs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "twig": {
      "name": "'"${NAME}"'",
      "flex": "'"${FLEX}"'",
      "shoots": "'"${SHOOTS}"'",
      "pattern:" "'"${PATTERN}"'"
    }
  }'

echo
