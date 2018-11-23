#!/bin/bash
# Exit if not root
ID=$(id -u)
if [ "x$ID" != "x0" ]; then
    echo "Some commands will require root to run"
    exit
fi

cd docker-bench-security-1.3.3
rm ../dbs.log
sudo sh docker-bench-security.sh -l ../dbs.log >/dev/null 2>&1
cd ..

