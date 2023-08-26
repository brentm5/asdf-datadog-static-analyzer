#!/usr/bin/env bash

set -e

plugins_root="$(mktemp -d)"
plugin_path="${plugins_root}/datadog-static-analyzer"
download_path="${plugins_root}/download/datadog-static-analyzer"
install_path="${plugins_root}/datadog-static-analyzer/bin"

mkdir -p "$plugin_path" "$download_path" "$install_path"

version="$(./bin/latest-stable)"
versions="$(./bin/list-all)"

echo "Found latest version ${version}"
echo "Full list of versions include: ${versions}"

export ASDF_INSTALL_TYPE='version'
export ASDF_INSTALL_VERSION="$version"
export ASDF_INSTALL_PATH="$install_path"
export ASDF_DOWNLOAD_PATH="$download_path"

./bin/download
./bin/install

# For some reason the static analyzer returns an exit code of 1 for the version commmand.
# We are going to turn off errors now that the main install is over
set +e
"$install_path/datadog-static-analyzer" -v

echo "$plugins_root"
tree "$plugins_root"

exit 0
