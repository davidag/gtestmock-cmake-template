#!/bin/bash

GMOCK_ZIP="gmock-1.7.0.zip"
GMOCK_ZIP_URL="https://googlemock.googlecode.com/files/${GMOCK_ZIP}"

if [ ! -d "gmock-1.7.0" ]; then
    echo "downloading gmock..."
    if ! wget $GMOCK_ZIP_URL; then
        echo "wget must be installed"
        exit 1
    fi
    echo "uncompressing zip..."
    if ! unzip $GMOCK_ZIP; then
        echo "unzip must be installed"
        exit 1
    fi
fi

exit 0
