Package.describe({
  name: "ksondere:meteor-simplecart",
  summary: "meteor packaged shopping cart using wojodesign/simplecart-js",
  version: "0.1.0",
  git: "https://github.com/ksondere/meteor-simplecart.git"
});

Package.onUse(function (api) {
  api.versionsFrom("1.0");
  api.use('jquery');
  api.use('templating', 'client');

  var path = Npm.require('path');
  var asset_path = path.join('simplecart-js');
  api.addFiles('simplecart-js/simpleCart.js', 'client');
});

