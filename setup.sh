#!/usr/bin/env bash
set -euo pipefail

echo "Running custom module from: $PWD"
echo "Kernel root: $KERNEL_ROOT"
echo "内核版本：$CONFIG"
if [[ $CONFIG = android14-6.1-* ]]; then
  echo '当前内核版本受支持'
else
  echo '不支持的内核版本'
  exit 1
fi

patch $KERNEL_ROOT/common/drivers/virt/gunyah/gunyah_qcom.c patches/fix_8gen3_gunyah_1.patch
patch $KERNEL_ROOT/common/drivers/virt/gunyah/vm_mgr_mm.c patches/fix_8gen3_gunyah_2.patch
#patch $KERNEL_ROOT/common/drivers/virt/gunyah/gunyah_qcom.c patches/fix_8gen3_gunyah_3.patch
