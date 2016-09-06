# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="a featherweight, lemon-scented, bar based on xcb"
HOMEPAGE="https://github.com/LemonBoy/bar"
EGIT_REPO_URI="https://github.com/osense/bar.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="xft"

CDEPEND="
	x11-libs/libxcb
	xft? ( x11-libs/libXft )
"
DEPEND="
	dev-lang/perl
	${CDEPEND}
"
RDEPEND="
	${CDEPEND}
"

#S="${WORKDIR}/${MY_P}"

src_prepare() {
    default
}
