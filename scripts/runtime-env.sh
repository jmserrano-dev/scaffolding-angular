#!/bin/sh

set -eu

env | grep "^SPA_*" | sed -E 's|^(.+)=(.*)$|window.\1="\2";|g'
