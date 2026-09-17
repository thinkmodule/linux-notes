#!/bin/bash
echo "=== System Information ==="
echo "Aktueller Benutzer: $(whoami)"
echo "Datum und Uhrzeit: $(date)"
echo "Freier Speicherplatz:"
df -h .
