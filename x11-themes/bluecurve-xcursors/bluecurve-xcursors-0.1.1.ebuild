# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

MY_PN="Bluecurve"
DESCRIPTION="Redhat's Bluecurve X cursor theme"
HOMEPAGE="http://gnome-look.org/content/show.php/?content=39229"
SRC_URI="http://gnome-look.org/CONTENT/content-files/39229-${P/-xcursors}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${PN/-xcursors}

src_install() {
	insinto /usr/share/cursors/xorg-x11/${MY_PN}
	doins -r cursors || die "doins failed"
}

pkg_postinst() {
	elog "To use this set of cursors, edit or create the file ~/.Xdefaults"
	elog "and add the following line:"
	elog "Xcursor.theme: ${MY_PN}"
	elog
	elog "You can change the size by adding a line like:"
	elog "Xcursor.size: 48"
	elog
	elog "Also, to globally use this set of mouse cursors edit the file:"
	elog "    /usr/share/cursors/xorg-x11/default/index.theme"
	elog "and change the line:"
	elog "    Inherits=[current setting]"
	elog "to"
	elog "    Inherits=${MY_PN}"
	elog
	elog "Note this will be overruled by a user's ~/.Xdefaults file."
	elog
	ewarn "If you experience flickering, try setting the following line in"
	ewarn "the Device section of your xorg.conf file:"
	ewarn "    Option  \"HWCursor\"  \"false\""
}
