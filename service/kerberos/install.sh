#!/bin/bash -e
# this script is run during the image build

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir /etc/krb5.conf.d/

ln -sf $DIR/assets/krb5.conf /etc
ln -sf $DIR/assets/kdc.conf /etc/krb5kdc
ln -sf $DIR/assets/kerberos-manage /sbin

exit 0
