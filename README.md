# Homebridge on Android
Tested on Android 7.0

## TODO
- [x] Create script
- [x] Write docs
- [x] Setup logs
- [x] Create command shortcut
- [ ] Research ways to restart and other commands execution. termux.boot?

## Installation

### Setup device and get an app

Open Settings <picture><img src="https://github.com/Orachigami/homebridge-android/assets/22968321/09694fc4-a928-4096-bb37-b898d212e94e" alt="Settings icon" width="30px"></picture> -> Lock screen and security -> toggle Unknown sources

<details>
  <summary>Screenshots</summary>

| Settings | Lock screen and security |
| --- | --- |
| <picture>![image](https://github.com/Orachigami/homebridge-android/assets/22968321/f1cb7d15-2c03-4927-9827-4ddc2fed049b)</picture> | <picture>![image](https://github.com/Orachigami/homebridge-android/assets/22968321/d776cb8f-00b2-4ff5-abb8-8d1672e0342e)</picture> |

</details>

Download and install Termux <picture><img src="https://github.com/Orachigami/homebridge-android/assets/22968321/72aff4f8-8f18-47da-a25f-148e51e096f7" alt="Termux icon" width="30px"></picture> apk https://f-droid.org/repo/com.termux_118.apk

<details>
  <summary>Alternative sources to get Termux <picture><img src="https://github.com/Orachigami/homebridge-android/assets/22968321/72aff4f8-8f18-47da-a25f-148e51e096f7" alt="Termux icon" width="30px"></picture> from</summary>

* https://github.com/AndronixApp/termux-releases
* https://f-droid.org/en/packages/com.termux/

</details>

### Install Homebridge

Open Termux <picture><img src="https://github.com/Orachigami/homebridge-android/assets/22968321/72aff4f8-8f18-47da-a25f-148e51e096f7" alt="Termux icon" width="30px"></picture> and execute:

```bash
curl https://raw.githubusercontent.com/Orachigami/homebridge-android/main/setup.sh | bash
```

| Regular start | Start with Accessory Control |
| --- | --- |
| <pre lang="bash">homebridge</pre> | <pre lang="bash">homebridge -I</pre> |

