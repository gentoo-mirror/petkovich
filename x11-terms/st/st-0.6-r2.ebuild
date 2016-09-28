# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils multilib savedconfig toolchain-funcs git-r3

DESCRIPTION="simple terminal implementation for X"
HOMEPAGE="http://st.suckless.org/"
EGIT_REPO_URI="https://github.com/dcat/st-xresources.git"

LICENSE="MIT-with-advertising"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="savedconfig"

RDEPEND="
	!<sys-libs/ncurses-6.0:0
	media-libs/fontconfig
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXft
"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
	x11-proto/xextproto
	x11-proto/xproto
"

src_prepare() {
	epatch_user

	sed -e '/^CFLAGS/s:[[:space:]]-O[^[:space:]]*[[:space:]]: :' \
		-e '/^X11INC/{s:/usr/X11R6/include:/usr/include/X11:}' \
		-e "/^X11LIB/{s:/usr/X11R6/lib:/usr/$(get_libdir)/X11:}" \
		-i config.mk || die
	sed -e '/@echo/!s:@::' \
		-i Makefile || die
	tc-export CC

	restore_config config.h
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install

  dodoc Xresources

	make_desktop_entry ${PN} simpleterm utilities-terminal 'System;TerminalEmulator;' ''

	save_config config.h
}
