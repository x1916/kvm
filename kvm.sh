#!/bin/bash

# Install KVM

grep -E -c "vmx|svm" /proc/cpuinfo

sudo apt install -y cpu-checker

kvm-ok

sudo apt install -y qemu qemu-kvm libvirt-daemon bridge-utils virt-manager virtinst

lsmod | grep -i kvm

sudo systemctl status libvirtd.service

sudo systemctl enable libvirtd --now

cat /etc/netplan/00-installer-config.yaml

sudo netplan apply

sudo networkctl status br0

ip a s

sudo apt update | sudo apt -y upgrade

sudo apt -y install xorg

virt-manager
