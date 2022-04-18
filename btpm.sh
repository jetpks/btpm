#!/bin/bash

## btpm - bluetooth power monitor
#
# There's a bug in macos that causes bluetooth to be powered off when your
# airpods are nearby, but connected to some other device (like your phone.)
# This breaks the unlock with Apple Watch feature and makes me so angry that
# I'm writing this script instead of doing my actual job.

## Dependencies
#
# * Requires `blueutil` to be installed `brew install blueutil` -- I haven't
# vetted this literally at all for licensing or code quality. It was the first
# result in my search for "macos enable bluetooth command line" and I found it
# [here](https://davidwalsh.name/command-line-bluetooth).

## What does this do?
#
# Checks the bluetooth power state every 5 seconds. If disabled, enables.

## How do I use it?
#
# ./btpm.sh

while true; do
  sleep 5
  [[ `blueutil -p` -eq 0 ]] && blueutil -p 1
done

