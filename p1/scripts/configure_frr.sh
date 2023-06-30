#!/bin/bash

# /etc/frr/daemons needs to be owned by frr:frr
chown frr:frr /etc/frr/daemons
# the permissions need to be like this
chmod 644 /etc/frr/daemons
