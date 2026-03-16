# gpu-management

This is a set of scripts I use to manage my home GPU cluster.
It contains the following commands:
- `power-limit <WATTS>` - power limit ALL of your cards to the same wattage
- `list-gpu-pcie` - list the PCIe number of each of the GPUs
- `disable-gpu <PCIE-NUMBER>` - disable the GPU (it will be idled/unavailable in `nvidia-smi`
- `enable-gpu <PCIE-NUMBER>` - enable a disabled GPU

All of them require `sudo` access because of `nvidia-smi`.

## Installation

Installation is easy:

```
./install.sh
```

This will `cp`, `chown`, and `chmod` the scripts into `$HOME/.local/bin`.
