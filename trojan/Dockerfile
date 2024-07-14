FROM teddysun/trojan-go

# Install gettext to use envsubst
RUN apk add --no-cache gettext

# Copy the startup script
COPY start-trojan.sh /start-trojan.sh
RUN chmod +x /start-trojan.sh

# Copy the configuration template
COPY config/config-template.json /etc/trojan-go/config-template.json

# Set the entrypoint
ENTRYPOINT ["/start-trojan.sh"]
