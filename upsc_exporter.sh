#!/bin/bash

# default to ups@localhost
UPS_TARGET="${UPS_TARGET:-ups@localhost}"

upsc "$UPS_TARGET" > /dev/stdout 2> /dev/null | ./upsc_to_prometheus.awk
