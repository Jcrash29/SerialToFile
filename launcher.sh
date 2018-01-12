#!/bin/bash
# launcher.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd /
cd $DIR
python Com2File.py
cd /

