# ip-notifier
Sends a Push Bullet note with the device ip address on boot.


### Install

First you'll need to get your Push Bullet Access Token(API Key) and device identifier. Both can be found at the Push Bullet website. The API Key is listed under 'Account Settings'. If you select a device from the device list on the dashboard page you see the device ID listed in the URL after 'device_iden'.


- `$ git clone https://github.com/HalleyInteractive/ip-notifier.git`
- `$ cd ip-notifier/`
- `$ ./install.sh API_KEY DEVICE_IDENTIFIER`
- Check if the API key and Device identifier are correct, if so press 'y'.
- After installing the NodeJS modules it will ask if the script should be added to your crontab file. This will run the script after each reboot. If you want to add the script press 'y'.

