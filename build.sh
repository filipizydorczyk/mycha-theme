#!/bin/bash

# ----------- CLEANING  -------------
rm -rf ./build/*
cp ./src/index.theme ./build/index.theme

# ----------- GNOME SHELL -----------
mkdir -p ./build/gnome-shell/
sass --no-source-map ./src/gnome-shell/sass/gnome-shell.scss ./build/gnome-shell/gnome-shell.css
cp -r ./src/gnome-shell/assets ./build/gnome-shell/
cp -r ./src/gnome-shell/icons ./build/gnome-shell/
cp ./src/gnome-shell/gnome-shell-theme.gresource ./build/gnome-shell/gnome-shell-theme.gresource
cp ./src/gnome-shell/gnome-shell-theme.gresource.xml ./build/gnome-shell/gnome-shell-theme.gresource.xml
cp ./src/gnome-shell/*.svg ./build/gnome-shell/
cp ./src/gnome-shell/*.css ./build/gnome-shell/

# ----------- GTK THEME -------------
cp -r ./src/gtk-2.0 ./build/
sass --no-source-map ./src/gtk-3.0/gtk.scss ./build/gtk-3.0/gtk.css
cp -r ./src/gtk-3.0/assets ./build/gtk-3.0/
cp -r ./src/gtk-3.0/assets.svg ./build/gtk-3.0/
cp -r ./src/gtk-3.0/assets.txt ./build/gtk-3.0/
