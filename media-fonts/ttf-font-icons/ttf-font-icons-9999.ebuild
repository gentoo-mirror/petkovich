# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/setuptools/setuptools-9999.ebuild,v 1.1 2013/01/11 09:59:31 mgorny Exp $
EAPI="5"

# Enforce Bash scrictness.
set -e

EGIT_BRANCH="develop"

inherit font

DESCRIPTION="A non-overlapping mix of Ionicons and Awesome iconic fonts"
HOMEPAGE="http://kageurufu.net/icons.pdf"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~x86-fbsd"
IUSE=""

DEPEND="media-libs/fontconfig
        x11-base/xorg-server"
RDEPEND=""


S=${WORKDIR}/ttf-font-icons

src_unpack() {
    mkdir -p ${S}/font
    cp ${DISTDIR}/${A} ${S}/font/
    cp ${FILESDIR}/icons.ttf ${S}/font/
}


FONT_S="${S}/font"
FONT_SUFFIX="ttf"
