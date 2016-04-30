#!/bin/bash


if [ -x "/startup.sh" ]
then
  /startup.sh
fi


supervisord -c /etc/supervisor/supervisord.conf -n > /dev/null