# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
EGIT_REPO_URI="https://github.com/winterTTr/ace-jump-mode.git"

inherit elisp git-2

DESCRIPTION="Ace jump mode is a minor mode of emacs, which help you to move the cursor within Emacs."
HOMEPAGE="https://github.com/winterTTr/ace-jump-mode"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

SITEFILE="50${PN}-gentoo.el"
