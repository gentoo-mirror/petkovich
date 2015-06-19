# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_6 python2_7 )
inherit distutils-r1

MY_PV="${PV}"

DESCRIPTION="Pure python package for reading/writing dBase, FoxPro and Visual FoxPro .dbf files."
HOMEPAGE="http://groups.google.com/group/python-dbase"
SRC_URI="https://pypi.python.org/packages/source/d/dbf/dbf-0.95.004.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${PN}-${MY_PV}
