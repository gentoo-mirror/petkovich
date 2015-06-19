# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

MY_PN="Mesmerized"
DESCRIPTION="A theme based on Aurora-Midnight and Clearlooks GUMMY"
HOMEPAGE="http://gnome-look.org/content/show.php/?content=87004"
SRC_URI="http://gnome-look.org/CONTENT/content-files/87004-${MY_PN}.tar.bz2"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=x11-themes/gtk-engines-aurora-1.5.1
	>=x11-themes/bluecurve-xcursors-0.1.1
	>=x11-themes/gnome-colors-themes-5.5.1"

src_install() {
	cd "${WORKDIR}"
	for dir in Mesmerize* ; do
		insinto /usr/share/themes/"${dir}"
		doins -r "${dir}"/*
	done
}
