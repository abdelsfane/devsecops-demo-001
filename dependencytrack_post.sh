#!/bin/bash

cd ~/$PROJECT_NAME/${SPRING_APP}
b64="$(cat ${bfile} | base64)"

curl -X "PUT" "http://18.222.135.38:8080/api/v1/bom" \
     -H 'Content-Type: application/json' \
     -H "X-API-Key: ${DT_TOKEN}" \
     -d "{\"project\": \"${project_id}\",\"bom\": \"${b64}\"}"

