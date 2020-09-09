# openconnect-udm
OpenConnect VPN Client for the UniFi Dream Machine Pro (Unofficial)

## Notes:
Because of the way OpenConnect works with the particular Global Protect VPN endpoint I'm using (requires a 2FA auth based on an Okta prompt) I actually didn't put the connection script in the container image itself.

Instead I just put a generic entrypoint shell script in there that does nothing.
I pre-loaded the binaries for TOTP creation and the openconnect client in the image.
Then I bind-mount a shell script from a /mnt/data dir.
And finally I overload the command at runtime to execute that script instead of the built-in info-message/generic entrypoint script.
