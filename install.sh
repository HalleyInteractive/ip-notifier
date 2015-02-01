APIKEY=$1 # Push Bullet API Key
DEVIDEN=$2 # Push Bullet Devide Identifier

echo "API KEY: $APIKEY"
echo "DEVICE IDENTIFIER: $DEVIDEN"

read -p "Is this correct? y/n " -n 1 -r
echo #
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo "Installing NPM Packages..."
npm install

cp "index-default.js" "index.js"
sed -i -e "s/APIKEY/${APIKEY}/" -e "s/DEVIDEN/${DEVIDEN}/" index.js

read -p "Add script to crontab? y/n " -n 1 -r
echo #
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

crontab -l > crontabfile

echo "@reboot /usr/local/bin/node $PWD/index.js" >> crontabfile

crontab crontabfile
rm crontabfile

echo "Current installed crontabs:"
crontab -l
