# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="Cantools is a collection of tools for dealing with Canalyzer style CAN data."
HOMEPAGE="https://sourceforge.net/projects/cantools/"
SRC_URI="http://downloads.sourceforge.net/project/cantools/cantools-src/${PV}/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="
>=sci-libs/hdf5-1.8.14-r1
>=sci-libs/matio-1.5.1
"
RDEPEND="${DEPEND}"

src_install() {
    # rename colliding binaries
    mv "${S}/matdump" "${S}/cantools-matdump"
    exeinto /usr/bin
    doexe cantomat
    doexe dbccopy
    doexe dbcls
    doexe depcomp
    doexe cantools-matdump
    doexe mdftomat
}
