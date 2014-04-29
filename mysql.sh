#!/bin/bash

exec mysql --defaults-file=/mysql/etc/my.cnf --host=${MYSQL_PORT_3306_TCP_ADDR} --port=${MYSQL_PORT_3306_TCP_PORT} "$@"
