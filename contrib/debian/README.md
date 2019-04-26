
Debian
====================
This directory contains files used to package mintdd/mintd-qt
for Debian-based Linux systems. If you compile mintdd/mintd-qt yourself, there are some useful files here.

## mintd: URI support ##


mintd-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mintd-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mintdqt binary to `/usr/bin`
and the `../../share/pixmaps/mintd128.png` to `/usr/share/pixmaps`

mintd-qt.protocol (KDE)

