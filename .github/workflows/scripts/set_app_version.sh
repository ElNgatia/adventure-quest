#!/bin/bash

function set_app_version() {
  echo "Setting release version"

  build_number=$(
    grep "^version:" pubspec.yaml |
    sed 's/.*+\(.*\)/\1/' |
    awk '{print $1 + 1}'
  )

  version="${TAG_NAME#v}"

  if [[ "$TAG_NAME" == *"-hotfix."* ]]; then
    release_version=$(echo "$version" | sed -E 's/-hotfix\.[0-9]+//')

    app_version=$(echo "$release_version" | cut -d '+' -f1)

    echo "APP_VERSION=$app_version" >> "$GITHUB_OUTPUT"
    echo "BUILD_NUMBER=$build_number" >> "$GITHUB_OUTPUT"
    echo "RELEASE_VERSION=$release_version" >> "$GITHUB_OUTPUT"
  else
    echo "APP_VERSION=$version" >> "$GITHUB_OUTPUT"
    echo "BUILD_NUMBER=$build_number" >> "$GITHUB_OUTPUT"
    echo "RELEASE_VERSION=${version}+${build_number}" >> "$GITHUB_OUTPUT"
  fi
}

set_app_version