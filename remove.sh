#!/usr/local/bin/bash
mapfile -t devices < <( idevice_id -l )

for i in "${devices[@]}"
do
echo "Removing App from ${i}"
ios-deploy --id ${i} iiuninstall_only --bundle_id com.apple.test.RealDeviceMap-UIControlUITests-Runner
done
