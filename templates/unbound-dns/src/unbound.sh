#!/bin/bash
 
# Write Unbound configuration file with values from variables
cat << EOF | tee /etc/unbound/unbound.conf
server:
        interface: 0.0.0.0
        access-control: 0.0.0.0/0 allow
        do-daemonize: no
forward-zone:
        name: "."
        forward-addr: ${vpc_dns}
forward-zone:
        name: "${onprem_domain}"
        forward-addr: ${onprem_dns}
EOF
 
/usr/local/sbin/unbound -c /etc/unbound/unbound.conf