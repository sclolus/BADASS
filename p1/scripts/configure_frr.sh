#!/bin/bash

chown frr:frr /etc/frr/daemons
chmod 644 /etc/frr/daemons
/etc/init.d/frr restart
