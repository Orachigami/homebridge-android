export DEBIAN_FRONTEND=noninteractive &&
  echo -e 'Dpkg::Options {\n  "--force-confnew";\n}' > ~/../usr/etc/apt/apt.conf.d/local &&
  pkg remove -y game-repo &&
  pkg remove -y science-repo &&
  pkg update -y &&
  pkg upgr -y &&
  pkg i -y openssl-1.1 &&
  pkg i -y nodejs-lts &&
  rm ~/../usr/etc/apt/apt.conf.d/local &&
  npm install homebridge &&
  npm install homebridge-config-ui-x
