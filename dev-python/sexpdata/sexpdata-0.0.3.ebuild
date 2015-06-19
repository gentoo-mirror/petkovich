# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_6 python2_7 python3_2 python3_3 )
inherit distutils-r1

MY_PV="${PV}"

DESCRIPTION="S-expression parser for Python"
HOMEPAGE="https://github.com/tkf/sexpdata"
SRC_URI="https://pypi.python.org/packages/source/s/sexpdata/sexpdata-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${PN}-${MY_PV}
