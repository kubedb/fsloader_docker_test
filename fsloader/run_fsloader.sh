#!/bin/sh
set -x
set -o errexit
set -o pipefail
echo "Running fsloader.."
exec fsloader run  --watch-dir "/runit" --reload-cmd "/fsloader/reloader.sh"
