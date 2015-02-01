var API_TOKEN = 'APIKEY';
var DEVICE_IDEN = 'DEVIDEN';

var PushBullet = require('pushbullet');
var ip = require('ip');

var pusher = new PushBullet(API_TOKEN);

pusher.note(DEVICE_IDEN, "Device started", "IP Address: " + ip.address(), function(error, response)
{
  if(error){ console.log("Error %s", error); }
  else { console.log(response); }
});