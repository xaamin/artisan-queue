#!/bin/bash

sed -i "s/{queue}/$QUEUE/" /etc/supervisor/supervisord.conf
sed -i "s/{tries}/$TRIES/" /etc/supervisor/supervisord.conf

/usr/bin/supervisord -n