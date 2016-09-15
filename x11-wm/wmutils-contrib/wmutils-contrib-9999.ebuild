# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 eutils toolchain-funcs

DESCRIPTION="Wmutils useful bits and pieces."
HOMEPAGE="https://github.com/wmutils/contrib"
EGIT_REPO_URI="https://github.com/wmutils/contrib.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	x11-libs/libxcb
"
RDEPEND="
	${DEPEND}
"

src_compile() {
    local S="${S}/killwa"
    emake -C "$S"
}

src_install() {
    exeinto /usr/bin
    doexe closest.sh
    doexe deletelock.sh
    doexe focus.sh
    doexe focus_watcher.sh
    doexe fullscreen.sh
    doexe groups.sh
    doexe rainbow.sh
    doexe snap.sh
    doexe switch_grid.sh
    doexe tile.sh
    doexe underneath.sh
    doexe workspace.sh

    local S="${S}/killwa"
    emake -C "${S}" DESTDIR=${D} install
}
