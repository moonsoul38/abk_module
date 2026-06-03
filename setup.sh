#!/usr/bin/env bash
set -euo pipefail

echo "Running custom module from: $PWD"
echo "Kernel root: $KERNEL_ROOT"

patch $KERNEL_ROOT/common/drivers/virt/gunyah/gunyah_qcom.c fix_8gen3_gunyah.patch

