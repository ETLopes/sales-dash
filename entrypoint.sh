#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /arezzo/tmp/pids/server.pid
sudo aa-remove-unknown

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
