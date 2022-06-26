#!/bin/bash
#This is an example for Ubuntu, not to 
#be used on mac

apt -y update
apt -y upgrade

if

[ -f /var/run/reboot-required]; then
	reboot
fi

