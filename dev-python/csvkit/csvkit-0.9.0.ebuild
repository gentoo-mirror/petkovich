# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_6 python2_7 python3_3 python3_4 )
inherit distutils-r1

MY_PV="${PV}"

DESCRIPTION="csvkit is a suite of utilities for converting to and working with CSV."
HOMEPAGE="http://csvkit.readthedocs.org/en/${PV}/"
SRC_URI="https://pypi.python.org/packages/source/c/csvkit/csvkit-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        >=dev-python/dbf-0.95.004
        >=dev-python/six-1.6.1
        >=dev-python/ordereddict-1.1
        >=dev-python/simplejson-3.6.3
        >=dev-python/openpyxl-2.0.3
        >=dev-python/xlrd-0.9.2
        >=dev-python/python-dateutil-2.2
        >=dev-python/sphinx-1.0.7
        >=dev-python/coverage-3.5.2
        >=dev-python/tox-1.3
        >=dev-python/sqlalchemy-0.6.6
"

S=${WORKDIR}/${PN}-${MY_PV}

src_prepare () {
    sed -e '/argparse/d' -i setup.py
}
