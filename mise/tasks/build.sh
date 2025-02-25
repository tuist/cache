#!/usr/bin/env bash
#MISE description="Build the project"

set -eo pipefail

swift build --configuration release
