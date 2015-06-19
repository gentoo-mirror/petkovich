# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit games eutils

DESCRIPTION="Action RPG similar to the Legend of Zelda with randomized dungeons."
HOMEPAGE="http://www.bindingofisaac.com/"
SRC_URI="the_binding_of_isaac_wrath_of_the_lamb-linux.tar.gz"

LICENSE="Commercial"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
IUSE=""
MY_PN="isaac"

RESTRICT="fetch strip"

DEPEND="app-arch/zip"
RDEPEND=">=dev-db/sqlite-3
         >=media-libs/libpng-1.5
         media-libs/alsa-lib
         >=x11-libs/gtk+-2[-aqua,introspection]
         dev-libs/expat
         media-libs/mesa
         x11-libs/cairo
         x11-libs/libXinerama
         x11-libs/pango[X]
         amd64? (
         app-emulation/emul-linux-x86-baselibs
         app-emulation/emul-linux-x86-gtklibs
         app-emulation/emul-linux-x86-opengl
         app-emulation/emul-linux-x86-soundlibs
         app-emulation/emul-linux-x86-xlibs )"

S="${WORKDIR}"

pkg_nofetch() {
    einfo "Please download ${A}"
    einfo "from your personal page in Humble Indie Bundle site"
    einfo "(http://www.humblebundle.com)"
    einfo "and place it to ${DESTDIR}"
}

src_install() {
    exeinto "${GAMES_BINDIR}"
    newexe "Binding of Isaac/The Binding of Isaac + Wrath of the Lamb" ${MY_PN}
    make_desktop_entry ${MY_PN} "The Binding of Isaac" ${MY_PN}
    prepgamesdirs
}
