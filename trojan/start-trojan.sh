#!/bin/sh

# Convert comma-separated passwords to JSON array format
PASSWORDS_ARRAY=$(echo "$PASSWORDS" | sed 's/,/","/g')
# PASSWORDS_ARRAY="\"${PASSWORDS_ARRAY}\""

# Export the transformed variable for envsubst
export PASSWORDS_ARRAY
export DOMAIN1

# Use envsubst to replace placeholders in the template
envsubst </etc/trojan-go/config-template.json >/etc/trojan-go/config.json

# Run Trojan with the generated config
exec trojan-go -config /etc/trojan-go/config.json
