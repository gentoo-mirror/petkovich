# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: petkovich/virtual/nodejs/nodejs-1.ebuild,v 1.3 2014/02/18 20:55:12 petkovich Exp $

DESCRIPTION="Virtual for nodejs implementations"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~sparc-fbsd ~x86-fbsd ~amd64-linux ~arm-linux ~x86-linux ~x86-macos"
IUSE=""

DEPEND=""
RDEPEND="
	|| (
                >=net-libs/nodejs-0.10.33
                >=net-libs/iojs-1.0.0
	)
        "
