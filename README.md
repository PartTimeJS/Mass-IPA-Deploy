# Mass IPA Deploy or Remove

1: git clone the repo and then cd to DepoloyIPA

2:  run `sudo npm install -g ipa-deploy`
    run `sudo npm install -g ios-deploy --unsafe-perm=true` (unsafe perm has to be used on El Capitan or higher)
    run `brew install libimobiledevice`

3: chmod +x deploy.sh

4: Add your resigned ipa to the DeployIPA folder.
(you can rename your ipa to `resigned.ipa` or change the filename in deploy.sh)

5: Edit devices.txt and add all of your UUIDs, one per line. Save.

5: Run `./deploy.sh` in Terminal

6: To Remove a specifi app, open remove.sh and change the target bundle to remove and run `./remove.sh` in Terminal within the repo directory.
