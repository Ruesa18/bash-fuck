#!/bin/bash
# Author: Sandro Rüfenacht
# Date: 17.11.2020
[[ "$UID" -eq 0 ]] || exec sudo "$0" "$@"
cp fuck.sh /bin/fuck

if [[ ! -d "/bin/fuck-files" ]]; then
    mkdir /bin/fuck-files
fi

chmod +x /bin/fuck
cp fuck-files/* /bin/fuck-files/
chmod +x -R /bin/fuck-files
