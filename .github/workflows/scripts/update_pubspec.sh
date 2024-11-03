#!/bin/bash
update_pubspec() {
    sed -i.bak "s/^version: .*/version: $APP_VERSION+$BUILD_NUMBER/g" pubspec.yaml
}
update_pubspec
