#!/bin/bash
echo "=== System-Check gestartet ==="

# Wir lesen den benutzten Speicherplatz (in Prozent) aus und speichern ihn in einer Variablen
SPEICHER=$(df /data | grep /data | awk '{print $5}' | sed 's/%//')

echo "Aktuelle Speichernutzung: $SPEICHER%"

# Jetzt kommt die Intelligenz (If-Abfrage):
if [ "$SPEICHER" -gt 80 ]; then
    echo "⚠️ WARNUNG: Dein Speicher ist zu über 80% voll! Bitte aufräumen."
else
    echo "✅ Alles im grünen Bereich. Genug Speicherplatz vorhanden."
fi
#!/bin/bash
echo "=== System Information ==="
echo "Aktueller Benutzer: $(whoami)"
echo "Datum und Uhrzeit: $(date)"
echo "Freier Speicherplatz:"
df -h .
