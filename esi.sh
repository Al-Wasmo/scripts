x_esi() {
    : "${ESI_USERNAME:?Set ESI_USERNAME before running}"
    : "${ESI_PASSWORD:?Set ESI_PASSWORD before running}"

    curl 'https://10.0.0.34:8090/login.xml' \
    -H 'Accept: */*' \
    -H 'Accept-Language: en-US,en;q=0.9' \
    -H 'Connection: keep-alive' \
    -H 'Content-Type: application/x-www-form-urlencoded' \
    -b 'SF-UI-LANG=en-US' \
    -H 'Origin: https://10.0.0.34:8090' \
    -H 'Referer: https://10.0.0.34:8090/httpclient.html' \
    -H 'Sec-Fetch-Dest: empty' \
    -H 'Sec-Fetch-Mode: cors' \
    -H 'Sec-Fetch-Site: same-origin' \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36' \
    -H 'sec-ch-ua: "Not:A-Brand";v="99", "Google Chrome";v="145", "Chromium";v="145"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'sec-ch-ua-platform: "Linux"' \
    --data-urlencode "mode=191" \
    --data-urlencode "username=${ESI_USERNAME}" \
    --data-urlencode "password=${ESI_PASSWORD}" \
    --data-urlencode 'a=1772011495006' \
    --data-urlencode 'producttype=0' \
    --insecure
}
