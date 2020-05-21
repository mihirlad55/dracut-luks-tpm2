#!/usr/bin/env bash

PKG_NAME="dracut-luks-tpm2-module"

# BASE_INSTALL_PREFIX is an environment variable
DRACUT_MODULES_DIR="$BASE_INSTALL_PREFIX/usr/lib/dracut/modules.d"
MODULE_DIR="$DRACUT_MODULES_DIR/80luks-tpm2"

mkdir -p "$MODULE_DIR"
install -Dm 755 "80luks-tpm2/module-setup.sh" "$MODULE_DIR/module-setup.sh"
install -Dm 755 "80luks-tpm2/probe-luks-tpm2.sh" "$MODULE_DIR/probe-luks-tpm2.sh"
install -Dm 755 "80luks-tpm2/unseal-tpm.sh" "$MODULE_DIR/unseal-tpm.sh"
install -Dm 755 "80luks-tpm2/unseal-tpm@.service" "$MODULE_DIR/unseal-tpm@.service"
install -Dm 755 "80luks-tpm2/90-tpmrm.rules" "$MODULE_DIR/90-tpmrm.rules"

mkdir -p "/usr/share/doc/$PKG_NAME"
install -Dm 644 LICENSE "/usr/share/doc/$PKG_NAME/LICENSE"
install -Dm 644 README.md "/usr/share/doc/$PKG_NAME/README.md"
