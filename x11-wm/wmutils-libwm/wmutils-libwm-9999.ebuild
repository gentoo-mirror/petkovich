# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 eutils toolchain-funcs

DESCRIPTION="A library for manipulating windows."
HOMEPAGE="https://github.com/wmutils/libwm"
EGIT_REPO_URI="https://github.com/wmutils/libwm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	x11-libs/libxcb
"
RDEPEND="
	${DEPEND}
"
