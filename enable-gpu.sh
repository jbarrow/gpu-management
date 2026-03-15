#!/bin/bash
# 
# enable-gpu.sh
#
# Re-enables an idled GPU after disabling. Use the same PCIe number
# used to disable.
#
# Usage:
#   enable-gpu <PCIe-Number>
#
# You can find each GPU's PCIe number using:
#   lspci | grep NVIDIA
#
# Which returns:
#   XX:00:...
# 
# The PCIe number you want is whatever that XX is.

PCIE_NUMBER=$1

sudo nvidia-smi drain -p 0000:${PCIE_NUMBER}:00.0 -m 0
