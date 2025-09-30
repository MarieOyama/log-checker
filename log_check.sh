#!/bin/bash
LOGFILE="/var/log/secure"
OUTPUT="error_log.txt"
grep "ERROR" "$LOGFILE" > "$OUTPUT"
ERROR_COUNT=$(wc -l < "$OUTPUT")
if [-s "$OUTPUT" ]; then
    echo "Error found! $ERROR_COUNT errors saved in $OUTPUT"
else
    echo "No errors"
fi
