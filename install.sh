#!/bin/bash

echo ""
echo "Welcome to the DNS My Potato installer!"
echo "https://github.com/pablogila/dnsmp"
echo ""

# Check if the installation is run as root
if [ "$EUID" -ne 0 ]; then
  echo "!!! ABORTING: You must be root! Install as:" >&2
  echo "sudo bash install.sh" >&2
  echo ""
  exit 1
fi

cp src/dnsmp.timer src/dnsmp.service /etc/systemd/system/
chmod 644 /etc/systemd/system/dnsmp.timer /etc/systemd/system/dnsmp.service
cp src/dnsmp /usr/local/sbin/
cp -n src/dnsmp-curl /usr/local/sbin/  # Do NOT overwrite previous user's configs
chmod 744 /usr/local/sbin/dnsmp /usr/local/sbin/dnsmp-curl

nano /usr/local/sbin/dnsmp-curl

systemctl daemon-reload
systemctl enable dnsmp.timer
systemctl start dnsmp.timer

echo ""
echo "DNSMP $(/usr/local/sbin/dnsmp version) is installed and running!"
echo "Use 'sudo dnsmp help' for info on user commands."
echo ""
