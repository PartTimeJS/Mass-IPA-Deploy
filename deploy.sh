#!/usr/local/bin/bash
mapfile -t devices < <( idevice_id -l )

for i in "${devices[@]}"
do
echo "updating ${i}"
ipa-deploy resigned.ipa -i ${i}
done
