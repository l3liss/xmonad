#!/bin/bash

python "$(dirname "$0")/btcprice.py" | awk '{print $3, $6}'
echo "BTC: $output"
