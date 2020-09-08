#!/bin/sh
### BEGIN CONFIGURATION ###
## Global Protect connection parameters
server='vpn.company.com'
username='first.last'
password='my_password'
secret='MY_2FA_TOKEN'
### END CONFIGURATION ###

# Generate TOTP challenge
totp=$(echo $secret | xargs oathtool --totp --base32)

# Connect to VPN using openconnect
echo -e "$password\n3\n$totp" | openconnect --passwd-on-stdin --protocol=gp -u "$username" "$server"
