#!/bin/sh
set -x
set -o errexit
set -o pipefail
echo "Running fsloader.."
fsloader run  --watch-dir "/runit" --reload-cmd "/fsloader/reloader.sh"
echo "Ignore running foo..."
exec tail -f /fsloader/foo.sh
