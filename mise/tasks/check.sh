#!/usr/bin/env bash
#MISE description="Run static checks"
#USAGE flag "-f --fix"

set -eo pipefail

if [ "$usage_fix" = "true" ]; then
    swiftformat .
    swiftlint lint --fix --quiet --config .swiftlint.yml Sources
else
    swiftformat --lint .
    swiftlint lint --quiet --config .swiftlint.yml Sources
fi
