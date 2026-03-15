#!/bin/bash
# 
# disable-gpu.sh
#
# Idles a GPU and prevents it from being seen by other programs,
# in order to help limit power draw when running on a subset of
# GPUs.
#
# Usage:
#   disable-gpu <PCIe-Number>
#
# You can find each GPU's PCIe number using:
#   lspci | grep NVIDIA
#
# Which returns:
#   XX:00:...
# 
# The PCIe number you want is whatever that XX is.

PCIE_NUMBER=$1

sudo nvidia-smi -i 0000:${PCIE_NUMBER}:00.0 -pm 0
sudo nvidia-smi drain -p 0000:${PCIE_NUMBER}:00.0 -m 1
