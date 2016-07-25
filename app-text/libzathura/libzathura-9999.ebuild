# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils fdo-mime multilib toolchain-funcs virtualx
[[ ${PV} == 9999* ]] && inherit git-2

DESCRIPTION="The new rendering library for zathura the document viewer"
HOMEPAGE="http://pwmt.org/projects/zathura/"
if ! [[ ${PV} == 9999* ]]; then
SRC_URI="http://pwmt.org/projects/${PN}/download/${P}.tar.gz"
fi
EGIT_REPO_URI="https://git.pwmt.org/pwmt/${PN}.git"
EGIT_BRANCH="1a6339cb41ae6a2d05653728f67b22e2572f107c"

LICENSE="ZLIB"
SLOT="0"
if ! [[ ${PV} == 9999* ]]; then
KEYWORDS="~amd64 ~arm ~x86 ~amd64-linux ~x86-linux"
else
KEYWORDS=""
fi
IUSE="+magic sqlite synctex test"

RDEPEND=">=dev-libs/glib-2.32:2=
	x11-libs/cairo:=
	>=x11-libs/gtk+-3.6:3
	magic? ( sys-apps/file:= ) "

DEPEND="${RDEPEND}
	sys-devel/gettext
	virtual/pkgconfig
	test? ( dev-libs/check )"

pkg_setup() {
	myzathuraconf=(
		WITH_MAGIC=$(usex magic 1 0)
		WITH_SQLITE=$(usex sqlite 1 0)
		WITH_SYNCTEX=$(usex synctex 1 0)
		WITH_LIBFIU=0
		PREFIX="${EPREFIX}"/usr
		LIBDIR='${PREFIX}'/$(get_libdir)
		CC="$(tc-getCC)"
		SFLAGS=''
		VERBOSE=1
		DESTDIR="${D}"
	)
}

src_prepare() {
		epatch "${FILESDIR}/old-plugin-api.patch"
}

src_compile() {
	emake "${myzathuraconf[@]}"
}

src_test() {
	Xemake "${myzathuraconf[@]}" test
}

src_install() {
	emake "${myzathuraconf[@]}" install
}

pkg_postinst() {
	fdo-mime_desktop_database_update
}

pkg_postrm() {
	fdo-mime_desktop_database_update
}
