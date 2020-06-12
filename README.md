# dracut-luks-tpm2
Dracut module to unseal TPM and retrieve password to pass to LUKS

## Requirements
` dracut tpm2-tools cryptsetup `

## Commandline Arguments
The following should be set in the kernel commandline:
```
rd.luks.key             # Default: /crypto_keyfile.bin
rd.luks_tpm2_auth       # Default: pcr:sha1:0,2,4,7
rd.luks_tpm2_handle     # Default: 0x81000000
```

## How to Install
### Arch Linux Users
The package is available on the AUR as `dracut-luks-tpm2`.

### The Manual Method
```
$ git clone https://github.com/mihirlad55/dracut-luks-tpm2
$ cd dracut-luks-tpm2
$ ./install.sh
```

## Credits
This was adapted from the mkinitcpio hook by [pawitp](https://github.com/pawitp)
which can be found at https://github.com/pawitp/arch-luks-tpm.

For more info on setting up the TPM, I highly recommend checking out pawitp's
articles on Medium:
- https://medium.com/@pawitp/full-disk-encryption-on-arch-linux-backed-by-tpm-2-0-c0892cab9704
- https://medium.com/@pawitp/the-correct-way-to-use-secure-boot-with-linux-a0421796eade
