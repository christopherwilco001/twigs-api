curl --include --request DELETE http://localhost:4741/twigs/${ID} \
--request DELETE \
--include \
--header 'Content-Type: application/json' \
--data '{
  "twig": {
    "name": "'"${NAME}"'",
    "flex": "'"${FLEX}"'",
    "shoots": "'"${SHOOTS}"'",
    "pattern:" "'"${PATTERN}"'"
  }
}'
