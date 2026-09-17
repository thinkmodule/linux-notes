#!/bin/bash
ZIEL="https://github.com"
ZEIT=$(date '+%Y-%m-%d %H:%M:%S')

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $ZIEL)

if [ "$STATUS" -eq 200 ]; then
    echo "[$ZEIT] SUCCESS: $ZIEL ist online (HTTP 200)" >> server.log
    echo "✅ Check abgeschlossen: Server ist online. Eintrag im Logbuch gespeichert."
else
    echo "[$ZEIT] ERROR: $ZIEL antwortet nicht (HTTP $STATUS)" >> server.log
    echo "⚠️ Check abgeschlossen: Server hat Probleme! Eintrag im Logbuch gespeichert."
fi

