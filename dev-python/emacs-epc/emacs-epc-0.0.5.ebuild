# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_6 python2_7 python3_2 )
inherit distutils-r1

MY_PV="${PV}"

DESCRIPTION="Python interface to emacs remote procedure call"
HOMEPAGE="https://github.com/tkf/python-epc"
SRC_URI="https://pypi.python.org/packages/source/e/epc/epc-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        dev-python/sexpdata[${PYTHON_USEDEP}]"

S=${WORKDIR}/epc-${MY_PV}
