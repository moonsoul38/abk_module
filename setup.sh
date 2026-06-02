#!/usr/bin/env bash
set -euo pipefail

echo "Running custom module from: $PWD"
echo "Kernel root: $KERNEL_ROOT"

module_root_bak=$module_root
module_root=$PWD
cd $KERNEL_ROOT/drivers/virt/gunyah/
patch gunyah_qcom.c $module_root/fix_8gen3_gunyah.patch
module_root=$module_root_bak
