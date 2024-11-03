#!/bin/bash

function set_app_version() {
  echo 'Setting release version'
  build_number=$(echo $(grep "^version:" pubspec.yaml | sed 's/.*+\(.*\)/\1/' | awk '{print $1 + 1}'))
  version=$(echo "$TAG_NAME" | cut -d 'v' -f2)
  echo "APP_VERSION=$version" >>$GITHUB_OUTPUT
  echo "BUILD_NUMBER=$build_number" >>$GITHUB_OUTPUT
}

set_app_version
