# homebridge-cmd-scripts

For the Homebridge plugin [hans-1/homebridge-cmdtriggerswitch](https://github.com/hans-1/homebridge-cmdtriggerswitch), I created various switches to do things such as wake and sleep my PC (usually turning on PC to watch Plex).

- Using Wake-on-LAN (WoL) sample found [here](https://stackoverflow.com/a/31588036/4270353)
- Using the [DontSleep](https://www.softwareok.com/?seite=Microsoft/DontSleep) app to keep the PC from sleeping when awakened
- Using a scheduled task [workaround](https://stackoverflow.com/a/70382385/4270353) to launch a GUI application (DontSleep) via Windows SSH 
- Using [PsShutdown](https://learn.microsoft.com/en-us/sysinternals/downloads/psshutdown) from the Sysinternals suite to sleep PC

Right now, using a stateful switch to turn on/off PC.

On command:

```bash
/home/pi/scripts/wake.sh xx:xx:xx:xx:xx:xx 192.168.1.xx 9 Joshua
```

Off command:

```bash
/home/pi/scripts/sleep.sh Joshua 192.168.1.xx
```

