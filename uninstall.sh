#!/bin/bash
# Author: Sandro Rüfenacht
# Date: 17.11.2020

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"
rm /bin/fuck
rm -rf /bin/fuck-files
