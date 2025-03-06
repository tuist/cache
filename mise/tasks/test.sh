#!/bin/bash
#MISE description="Test the project using Swift Package Manager"
#USAGE flag "-l --linux-vm" help="Build virtualizing Linux"

set -eo pipefail

if command -v podman &> /dev/null; then
    CONTAINER_ENGINE="podman"
else
    CONTAINER_ENGINE="docker"
fi

if [ "$usage_linux_vm" = "true" ]; then
    $CONTAINER_ENGINE run --rm \
            --volume "$MISE_PROJECT_ROOT:/package" \
            --workdir "/package" \
            swiftlang/swift:nightly-6.0-focal \
            /bin/bash -c \
            "swift test --build-path ./.build/linux"
else
    swift test
fi
