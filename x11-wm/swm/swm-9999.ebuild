# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 eutils savedconfig toolchain-funcs

DESCRIPTION="A simple window manager."
HOMEPAGE="https://github.com/dcat/swm"
EGIT_REPO_URI="https://github.com/dcat/swm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="savedconfig"

CDEPEND="
	x11-libs/libxcb
"
DEPEND="
	${CDEPEND}
	x11-libs/libX11
	media-libs/freetype
  x11-libs/libXinerama
"
RDEPEND="
	${CDEPEND}
"

src_prepare() {
    restore_config config.h
    default
}

src_install() {
    default
    save_config config.h
}
