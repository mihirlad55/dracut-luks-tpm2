#!/usr/bin/bash

. /lib/dracut-lib.sh

secret_file="$(getarg rd.luks.key=)"
handle="$(getarg rd.luks_tpm2_handle=)"
auth="$(getarg rd.luks_tpm2_auth=)"

info "Got rd.luks_tpm2_handle=$handle and rd.luks_tpm2_auth=$auth"

info "Attempting to unseal TPM..."
tpm2_unseal -c "$handle" -p "$auth" -o "$secret_file"

res="$?"

if [[ "$res" -eq 0 ]]; then
    info "TPM successfully unsealed"
else
    warn "TPM could not unseal"
fi

exit "$res"
