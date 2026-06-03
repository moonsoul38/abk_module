#!/usr/bin/env bash
set -euo pipefail

echo "Running custom module from: $PWD"
echo "Kernel root: $KERNEL_ROOT"
echo "内核版本：$CONFIG"

patch $KERNEL_ROOT/common/drivers/virt/gunyah/gunyah_qcom.c fix_8gen3_gunyah_1.patch
patch $KERNEL_ROOT/common/drivers/virt/gunyah/vm_mgr_mm.c fix_8gen3_gunyah_2.patch
