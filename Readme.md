# PopcornTime scripts

Simple script that downloads and installs version 0.3.9 of Popcorn-Time on
linux64 distros.

The script install Popcorn-Time in `/opt/Popcorn-Time`, making it available for
all users.

## Installing

```
$ sudo ./install_popcorntime.sh
```

## Uninstalling

As the writting of these Readme, I haven't added a script for uninstalling
Popcorn-Time, since it's not something I do often. But you can manually
uninstall Popcorn-Time by removing the following files:

```
$ sudo rm -rf /opt/Popcorn-Time/
$ sudo rm /usr/share/applications/popcorntime.desktop
$ sudo rm /usr/share/icons/hicolor/48x48/apps/popcorntime.png
```

Optionally, you can remove configuration files and databases:

```
$ rm -rf ~/.config/Popcorn-Time
```
