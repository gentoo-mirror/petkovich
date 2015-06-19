# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils git-2

DESCRIPTION="Jeroen janssens data-science-toolbox"
HOMEPAGE="https://github.com/jeroenjanssens/data-science-toolbox"
SRC_URI=""
EGIT_REPO_URI="https://github.com/jeroenjanssens/data-science-toolbox.git"

LICENSE="MIT"

SLOT="0"

KEYWORDS="x86 amd64"

DEPEND=">=sci-visualization/gnuplot-4.6.1
        >=dev-lang/R-3.0.1
        >=net-misc/curl-7.31.0
        >=sys-process/parallel-20130822
        >=dev-python/lxml-3.2.1
"

RDEPEND="${DEPEND}"

S=${WORKDIR}/${P}



src_install() {

    dobin Rio
    dobin dumbplot
    dobin explain
    dobin pbc
    dobin sample
    dobin scrape

    dodoc README.md
}
