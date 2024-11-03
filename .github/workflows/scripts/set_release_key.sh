#!/bin/bash

function set_release_key() {
    mkdir -p android/app/
    echo "$KEYSTORE_FILE" | base64 --decode >android/app/releasekey
    echo "storePassword=$KEYSTORE_PASSWORD" >>android/key.properties
    echo "keyPassword=$KEY_PASSWORD" >>android/key.properties
    echo "keyAlias=$KEY_ALIAS" >>android/key.properties
    echo "storeFile=releasekey" >>android/key.properties
}

set_release_key
