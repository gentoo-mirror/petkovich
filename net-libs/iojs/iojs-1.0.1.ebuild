# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: petkovich/net-libs/iojs/iojs-1.0.1.ebuild,v 1.1 2015/01/14 14:26:00 Petkovich $

EAPI=5

PYTHON_COMPAT=( python2_{6,7} )

inherit python-any-r1 pax-utils toolchain-funcs

DESCRIPTION="Evented IO for V8 Javascript"
HOMEPAGE="https://iojs.org"
SRC_URI="http://iojs.org/dist/v${PV}/iojs-v${PV}.tar.gz"

LICENSE="Apache-1.1 Apache-2.0 BSD BSD-2 MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86 ~x64-macos"
IUSE="+npm"

RDEPEND="dev-libs/openssl"
DEPEND="${PYTHON_DEPS}
	${RDEPEND}"

S=${WORKDIR}/iojs-v${PV}

src_configure() {
      local myconf=""
      ! use npm && myconf="--without-npm"
      # ! use snapshot && myconf="${myconf} --without-snapshot"

      "${PYTHON}" configure --prefix="${EPREFIX}"/usr \
              --shared-openssl --shared-zlib --without-dtrace ${myconf} || die
}
