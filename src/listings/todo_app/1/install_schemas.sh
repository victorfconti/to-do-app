#!/bin/sh
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
echo "Coping schemas"
sudo cp br.com.victor.Todo.gschema.xml /usr/share/glib-2.0/schemas/
echo "Installing schemas"
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
echo "Done"