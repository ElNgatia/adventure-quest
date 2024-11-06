#!/bin/bash

function build_flutter_bundle() {
  mkdir "$APP_VERSION has created"
  flutter build appbundle --release --no-shrink --build-name=$APP_VERSION --build-number=$BUILD_NUMBER
  mv build/app/outputs/bundle/release/app-release.aab $APP_VERSION/

}

build_flutter_bundle
