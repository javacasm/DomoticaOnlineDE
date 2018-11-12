## Upgrade from jessie to stretch

## fuente https://linuxconfig.org/raspbian-gnu-linux-upgrade-from-jessie-to-raspbian-stretch-9 y https://www.raspberrypi.org/documentation/raspbian/updating.md

sudo apt update
sudo apt upgrade
sudo apt dist-upgrade



sed -i 's/jessie/stretch/g' /etc/apt/sources.list
sed -i 's/jessie/stretch/g' /etc/apt/sources.list.d/*


sudo apt update

sudo apt upgrade

(unos 800 paquetes y ~600Mb)
