# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 eutils toolchain-funcs

DESCRIPTION=" POSIX compliant sh scripts for wmutils."
HOMEPAGE="https://github.com/wildefyr/fyre"
EGIT_REPO_URI="https://github.com/wildefyr/fyre.git"

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
    echo void > /dev/null
}

src_install() {
    emake DESTDIR="${D}" PREFIX="${I}"/usr install
    dodoc extras/config.example
    dodoc extras/flicker
    dodoc extras/sourcefyre.zsh
    dodoc extras/sxhkdc.example
    dodoc extras/taskbar
    dodoc extras/windows-fyrefree
}
