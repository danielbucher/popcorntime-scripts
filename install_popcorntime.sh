#!/bin/bash

sudo rm -rf /opt/Popcorn-Time

URL='https://popcorntime.sh/download/build/Popcorn-Time-0.3.9-Linux-64.tar.xz'

download_dir=$HOME/Downloads

# Download the tarball
wget -P $download_dir $URL -O $download_dir/popcorntime.tar.xz

# Extract the tarball
tar xfv $download_dir/popcorntime.tar.xz --directory $download_dir

# Copies the icon
icon_file=$HOME/.local/share/icons/popcorntime.png
cp $download_dir/linux64/src/app/images/icon.png $icon_file

# Moves the folder into /opt/Popcorn-Time
dest_dir=/opt/Popcorn-Time
sudo mv $download_dir/linux64 $dest_dir

# Creates the desktop file
desktop_file=$HOME/.local/share/applications/popcorntime.desktop
echo '[Desktop Entry]' > $desktop_file
echo 'Comment=Watch Movies and TV Shows instantly' >> $desktop_file
echo 'Name=Popcorn Time' >> $desktop_file
echo 'Exec=/opt/Popcorn-Time/Popcorn-Time' >> $desktop_file
echo 'Icon=popcorntime.png' >> $desktop_file
echo 'MimeType=application/x-bittorrent;x-scheme-handler/magnet;' >> $desktop_file
echo 'StartupNotify=false' >> $desktop_file
echo 'Categories=AudioVideo;Video;Network;Player;P2P;' >> $desktop_file
echo 'Type=Application' >> $desktop_file
