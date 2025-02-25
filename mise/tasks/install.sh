#!/usr/bin/env bash
#MISE description="Install the project dependencies"

set -eo pipefail

swift package resolve
