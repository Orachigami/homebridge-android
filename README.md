# Install Homebridge on Android

This guide provides step-by-step instructions to show you how to install Homebridge on
your Android device. Imagine using your old phone as a home server.

## Prerequisites

Before you get started, make sure you have the following ready:

* A device with Android 7 or higher.
* :warning: For Android 12, 12L and 13+ complete [these steps](https://github.com/termux/termux-app/issues/2366#issuecomment-1237468220).
* A DHCP-enabled network.

<details>
<summary>Tested components versions</summary>

* Samsung Galaxy J7 (j7y17lte) with Android 7.0
* termux 0.118.0
* openssl 1.1.1u
* Python 3.11.4
* node v18.16.0
* npm 9.5.1
* homebridge@1.6.1
* homebridge-config-ui-x@4.50.4

</details>

## Installation

You can watch the video of the process [here](https://www.youtube.com/watch?v=Sc3o7uwlLHg) or complete steps manually.

### Configure your device

The Termux app, which is going to be installed in the next step, is deprecated on Play Market, Play Store, etc. That is why enabling app installation from `Unknown Sources` is required.

1. Open `Settings` <picture><img src="/assets/settings-icon.png" alt="Settings icon" width="30px"></picture>
2. Find and click on `Lock screen and security`
3. Enable `Unknown sources`

<details>
  <summary>Screenshots</summary>

| Settings | Lock screen and security |
| --- | --- |
| <picture>![Settings](/assets/settings-screenshot.png)</picture> | <picture>![Security](/assets/security-screenshot.png)</picture> |

</details>

### Install Termux app

1. Download the Termux <picture><img src="/assets/termux-icon.png" alt="Termux icon" width="30px"></picture> apk from: https://f-droid.org/repo/com.termux_118.apk
2. Open `My files` app on your device
3. Open `Downloads` folder
4. Open `com.termux_118.apk` file
5. Tap `Install` button on the right bottom corner
6. Tap `Done` button

<details>
  <summary>Alternative sources to get Termux <picture><img src="/assets/termux-icon.png" alt="Termux icon" width="30px"></picture> from</summary>

* https://f-droid.org/en/packages/com.termux/
* https://github.com/AndronixApp/termux-releases
* Deprecated: ~~Play Market~~

</details>

### Install Homebridge

1. Open this page and copy command below:
```bash
curl https://raw.githubusercontent.com/Orachigami/homebridge-android/main/setup.sh | bash
```
2. Open Termux app <picture><img src="/assets/termux-icon.png" alt="Termux icon" width="30px"></picture>
3. Wait until it launches
4. Tap & Hold your finger on any place until you see a context menu with `COPY PASTE MORE...` buttons
5. Tap `PASTE`
6. Tap `Enter` button which should like something like :leftwards_arrow_with_hook: or 🔎

Installation process takes approximately 5 minutes.

If everything was installed successfully you will receive:

> == Installation successful ==<br>Execute hb command to start

### After installation

To test that Homebridge just works execute any of these commands:

| Regular start | Start with Accessory Control |
| --- | --- |
| <picture><img src="data://" width="200px" height="1px"></picture><br><pre lang="bash">hb</pre> | <picture><img src="data://" width="200px" height="1px"></picture><br><pre lang="bash">hb -I</pre> |

Wait for the message:

> [Homebridge UI] Homebridge Config UI X ... is listening on :: port 8581

Which means that you can open your browser, type in the address bar http\://\<your device ip>:8581 and complete setup.

### Complete: Login to the Homebridge UI

The [Homebridge UI](https://github.com/oznu/homebridge-config-ui-x) web interface will allow you to install, remove and update plugins, and modify the Homebridge config.json and manage other aspects of your Homebridge service.

Login to the web interface by going to http\://\<ip address of your device>:8581.

To find the IP address of your server you can run:

```bash
ifconfig | awk '/netmask/{print $2}'
```

Ignore 127.0.0.1 if you don't know what it is.

## FAQ

| Are these apk files official? |
| --- |
| No but approved by official Termux repo: [It is recommended that you shift to F-Droid or GitHub releases.](https://github.com/termux/termux-app/blob/master/README.md#Installation:~:text=It%20is%20recommended%20that%20you%20shift%20to%20F%2DDroid%20or%20GitHub%20releases.) |
