# Copyright 2019 Marcin Nowicki
# Distributed under the terms of the MIT License
# $Header: $

EAPI=7

EGIT_REPO_URI="git://github.com/pr0d1r2/torrent_shell_aliases.git"
[[ ${PV} == 9999 ]] && inherit git-r3

DESCRIPTION="Gentoo overlay with aria2 running on VPN in Docker."
HOMEPAGE="https://github.com/pr0d1r2/torrent_shell_aliases"

LICENSE="MIT"
SLOT="0"
[[ ${PV} == 9999 ]] && KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="
app-emulation/docker
net-misc/aria2
app-admin/pwgen
"
DEPEND="${RDEPEND}"

src_prepare() {
	mv pia_network_setup.sh pia_network_setup
	mv aria2_vpn_pia.sh aria2_vpn_pia
}

src_compile() {
	echo "No need for compilation."
}

src_install() {
	dobin pia_network_setup
	dobin aria2_vpn_pia
}
