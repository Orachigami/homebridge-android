export DEBIAN_FRONTEND=noninteractive &&
  echo -e 'Dpkg::Options {\n  "--force-confnew";\n}' > ~/../usr/etc/apt/apt.conf.d/local &&
  pkg remove -y game-repo &&
  pkg remove -y science-repo &&
  pkg update -y &&
  pkg upgr -y &&
  pkg i -y python openssl-1.1 nodejs-lts &&
  rm ~/../usr/etc/apt/apt.conf.d/local &&
  npm install homebridge &&
  npm install -g --unsafe-perm homebridge-config-ui-x &&
  echo -e '{\n    "bridge": {\n        "name": "Homebridge BA3D",\n        "username": "0E:F1:D3:85:BA:3D",\n        "port": 51248,\n        "pin": "171-94-744",\n        "advertiser": "bonjour-hap"\n    },\n    "accessories": [],\n    "platforms": [\n        {\n            "name": "Config",\n            "port": 8581,\n            "platform": "config"\n        }\n    ]\n}\n' > ~/.homebridge/config.json &&
  echo -e '== SUCCESS ==\nTo run execute npx homebridge'
