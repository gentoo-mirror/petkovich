# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit eutils multilib savedconfig toolchain-funcs git-r3

DESCRIPTION="Query the XRDB from the command line, no more unnecessary grepping!"
HOMEPAGE="https://github.com/arianon/xrq/"

EGIT_REPO_URI="https://github.com/arianon/xrq.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"

RDEPEND="
	x11-libs/libX11
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	epatch_user

	tc-export CC
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install
}
