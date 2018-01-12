#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
line="@reboot sh  $DIR/launcher.sh > $DIR/logs/cronlog 2>&1"

(sudo crontab -l > backup; echo "$line">> backup; sudo crontab backup ;rm backup)
