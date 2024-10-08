# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit git-r3 toolchain-funcs

DESCRIPTION="Wmutils optional utilities."
HOMEPAGE="https://github.com/wmutils/opt"
EGIT_REPO_URI="https://github.com/wmutils/opt.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	x11-libs/libxcb
"
RDEPEND="
	${DEPEND}
"
