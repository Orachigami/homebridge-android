# Homebridge on Android
Tested on Android 7.0

Open settings -> Lock screen and security -> toggle Unknown sources

Download and install Termux apk https://github.com/AndronixApp/termux-releases/blob/main/Releases/Termux_118/com.termux_118.apk?raw=true

Alternative sources to get Termux from:
* https://github.com/AndronixApp/termux-releases
* https://f-droid.org/en/packages/com.termux/

Open Termux and execute:
```bash
curl https://raw.githubusercontent.com/Orachigami/homebridge-android/main/setup.sh | bash
```

After everything is finished you can start homebridge using:
```bash
npx homebridge
```

Or if you want to see Accessories tab:
```bash
npx homebridge -I
```
