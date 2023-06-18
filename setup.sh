pkg remove -y game-repo &&
  pkg remove -y science-repo &&
  pkg update -y &&
  pkg -y upgr &&
  pkg i -y openssl-1.1 &&
  pgk i -y nodejs-lts &&
  npm install homebridge &&
  npm install homebridge-config-ui-x
