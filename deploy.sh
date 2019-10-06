#!/usr/local/bin/bash

echo "[deploy.sh] Unpacking ipa"
unzip ./resigned.ipa

mapfile -t devices < <( idevice_id -l )

for i in "${devices[@]}"
do

  echo "[deploy.sh] Removing UI Tests from ${i}"

  ios-deploy --id ${i} --uninstall_only --bundle_id com.apple.test.RealDeviceMap-UIControlUITests-Runner

  echo "[deploy.sh] Deploying Updated App to${i}"

  ios-deploy -b ./Payload/*.app -i ${i}

done

rm -rf ./Payload
