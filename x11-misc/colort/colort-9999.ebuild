# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit eutils multilib savedconfig toolchain-funcs git-r3

DESCRIPTION="A small program for 'tinting' colors by values. Also supports inverting colors."
HOMEPAGE="https://github.com/neeasade/colort/"

EGIT_REPO_URI="https://github.com/neeasade/colort.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"

RDEPEND="
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
