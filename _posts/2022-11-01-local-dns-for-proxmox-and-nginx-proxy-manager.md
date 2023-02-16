---
layout: page
title: Local DNS for Proxmox and Nginx proxy manager
categories: [Guides]
tags: [devops, guides, nginx, proxmox, proxy manager, servers]
---

### Installing dnsmasq in Proxmox and setup

`apt install dnsmasq`

After installation, adding to autostart

`systemctl enable dnsmasq`

Let's change config

Default path to config
`/etc/dnsmasq.conf`

```
domain=test.lan
expand-hosts
no-hosts
domain-needed
no-resolv
no-poll
dhcp-range=interface:vmbr1,10.10.5.0,10.10.5.250,12h
dhcp-option=vmbr1,3,10.10.5.1
```
Also we can change path to `dhcp-leasefile=/var/lib/misc/dnsmasq.leases` all DHCP leases are stored here

Interface vmbr1 using for all my LXC, you can change to any Interface where you need DHCP

![Network device setup](/assets/img/network_device.png)

We can commit the ip to the mac address in dnsmasq to do this, we have to do the following `dhcp-host=xx:xx:xx:xx:xx:xx,10.10.5.10,Web` add this line in `dnsmasq.conf`

### Installing Nginx proxy manager in portainer

In my case, I created the LXC for Portainer and start installing.
First of all create new container give name and paste this repository: 'jc21/nginx-proxy-manager:latest' after that we need add ports: 443, 80, 81. 443 and 80 its classic and 81 port for admin panel

![Nginx in Portainer](/assets/img/portainer_nginx.png)

Next step setup volumes in my example I made like that

![Volumes in Portainer](/assets/img/portainer_volumes_nginx.png)

Latest step of installation we can save data in Nginx proxy manager or save data in MYSQL. To make that we should do this

![Env in Portainer](/assets/img/portainer_env_example.png)

And here we go, Nginx proxy manager ready!

![Nginx proxy manager](/assets/img/nginx_proxy_manager.png)

Your ip of lxc and port 81 for example http://portainer.test.lan:81

It will work with subnet if you add DNS in your VPN, for example: MY DNS server IP 10.10.5.1 and after that you can access
to lxcs with their names

Default username 'admin@example.com'

Default password 'changeme'

After login change login and password after that go to Proxy hosts and add your first domain.

Some example here:

![First proxy domain](/assets/img/first_proxy.png)
