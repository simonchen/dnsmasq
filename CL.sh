#!/bin/sh
echo "\n================ ENVIROMENT ========================\n"
env

echo "\n================ DNSMASQ COMPLATION =================\n"
chmod +x ./bld/get-version
chmod +x ./bld/pkg-wrapper

make install

echo "\n================ DNSMASQ BINARY STRIPPED =============\n"
/usr/xcc/$ENV_HOST/bin/$ENV_HOST-strip /usr/local/sbin/dnsmasq

echo "\n================ Release =============================\n"
mkdir ./$ENV_HOST
cp /usr/local/sbin/dnsmasq ./$ENV_HOST/
ls -lt ./$ENV_HOST/
