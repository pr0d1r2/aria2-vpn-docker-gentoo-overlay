# aria2-vpn-docker-gentoo-overlay

Gentoo overlay with aria2 running on VPN in Docker.
Useful for any kind of downloading.
For now it supports only privateinternetaccess.

## Setup

```shell
layman -o https://raw.githubusercontent.com/pr0d1r2/aria2-vpn-docker-gentoo-overlay/master/repositories.xml -f -a aria2-vpn-docker
emerge -a aria2-vpn-docker
```

### Configure privateinternetaccess

Put these into your shell profile:

```shell
export PIA_GATEWAY="Romania"
export PIA_USERNAME="myfancyusername"
export PIA_PASSWORD="myfancyPassw0rd"
```

### Configure docker access for user

You need access to docker from your account:

```shell
usermod -a -G docker user
```

## Usage

Simply use following command:

```shell
aria2_vpn_pia TPB_AFK.torrent
```
