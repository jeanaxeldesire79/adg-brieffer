#!/bin/bash
# Deploy to portal.axeldevlab.com
# Usage: ./scripts/deploy.sh <portal-server>
set -e

PORTAL_SERVER=${1:-"root@portal.axeldevlab.com"}
APP_FILE="src/index.html"
REMOTE_PATH="/app/app/apps/web/"

echo "Deploying to ${PORTAL_SERVER}:${REMOTE_PATH}"
scp "${APP_FILE}" "${PORTAL_SERVER}:${REMOTE_PATH}"
echo "Done! Reload portal module viewer to see changes."
