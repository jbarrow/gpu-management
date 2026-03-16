#!/bin/bash
#
# This is a script that will power-limit all GPUs to a fixed wattage.
# For instance, `power-limit 250` on a 4x3090 machine will limit all
# GPUs to 250W (1000W total), meaning they should run on a single
# PSU, barring spikes.
#
# Usage:
#   power-limit <W>
#
# Where W is an integer from 0 to your GPU's TDP (e.g. 350 for a 3090,
# 450 for a 3090Ti or 4090, and 575 for a 5090).

POWER=${1:-250}

# enable persistence mode
sudo nvidia-smi -pm ENABLED

# set power limit to specified wattage 
sudo nvidia-smi -pl "${POWER}"

# check current power settings with
# sudo nvidia-smi -q -d POWER
