#!/bin/sh

cp /etc/libvirt/libvirtd.conf /etc/libvirt/libvirtd.conf.org
sed -i 's/#listen_tls = 0/listen_tls = 0/' /etc/libvirt/libvirtd.conf 
sed -i 's/#listen_tcp = 1/listen_tcp = 1/' /etc/libvirt/libvirtd.conf 
sed -i 's/#auth_tcp = "sasl"/auth_tcp = "none"/'  /etc/libvirt/libvirtd.conf 
sed -i 's/#listen_addr = "192.168.0.1"/listen_addr = "0.0.0.0"/' /etc/libvirt/libvirtd.conf 
cp /etc/sysconfig/libvirtd /etc/sysconfig/libvirtd.org
sed -i 's/#LIBVIRTD_ARGS="--listen"/LIBVIRTD_ARGS="--listen"/' /etc/sysconfig/libvirtd
