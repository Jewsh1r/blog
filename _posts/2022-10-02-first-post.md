---
layout: post
title: First Post
date: 2022-10-02 18:00 +0000
categories: [Blogging, Tutorial]
tags: [devops, life, csgo, proxmoxm, supermicro, servers]
---
---



### About me and first trying to learn systems

I have been thinking about creating a blog for a very long time and now my hands have reached. Few words about myself: I'm 21 old, trying to become DEVOps, Started learning linux in 2016, when My friend and I wanted create CS:GO Servers, built a server on i5, bought white IP and install windows server. After 1 month using default steamcmd without scripts it was terribly because you need PC or laptop with RDP to controll servers, of course you can use RDP on smartphone but it is awkward to use.

![First server](/assets/img/server/firstserver.jpg)

### Linux part

First installed Linux OS was debian with ssh and i found good project [LGSM](https://github.com/GameServerManagers/LinuxGSM). This project very simple to create a lot of servers in different games. It was the first automation, auto update, restart server, upload files with ftp and control with ssh. Server location was in Russia, Saint-Petersburg we had a lot of players on server because next to us is Finland, Sweden, Denmark. After 5 days we had stable online about 100 players in 4 CS:GO servers. We added on loading screen adversting for players and got after month 100$. Also in server was installed best voice server is TeamSpeak 3. At that moment I did not understand that there was LXC, Docker, Ceph, Raid and other cool features. I installed everything like default systemd service

### New Server

I decided to build a new server with more cores found motherboard Intel S2600GL and bought CPU E5-2695 V2 (12 cores 24 threads) from Ali, found new PSU with gold certificate and Hard disk was 1 TB from my PC. Thought I'd find it in the future case for this motherboard but it was not classic E-ATX OR ATX board and it lay just on a plank around 3 years. I installed Debian 8. All programs were placed directly without docker, lxc and etc. When we got problems with packages error. I'm googling errors and trying to fix. If problem not solved, I were reinstalling OS. A lot of problems was with web packages of php and other same stuff.

### 1U Supermicro and Proxmox

After first work in IRL i bought another server with 1U case, motherboard, PSU. It was same CPU socket (2011), move from old server hdd,cpu, ram and bought new ram on Ali.
My friend Serpentiel from collage advised me try Proxmox. Today will 2 years I'm using Proxmox. I got a lot of skill with LXC,QEMU,IPTABLES. Pondering now I can't understand how I work with linux before.


### End

In conclusion I would like to say that I decided to create a blog to share my personal experience in solving various problems. I bellieve it will be useful for someone.

P.S sorry for my bad English


Big thx Daniil N. and Daniil B. for my experience and motivation