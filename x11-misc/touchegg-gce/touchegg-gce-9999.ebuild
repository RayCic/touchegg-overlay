# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2 git-r3

DESCRIPTION="GUI for multitouch gesture recognizer"
HOMEPAGE="https://github.com/Raffarti/Touchegg-gce"
EGIT_REPO_URI="https://github.com/Raffarti/Touchegg-gce.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="x11-libs/libX11
	dev-qt/qtcore:4
	dev-qt/qtgui:4"
RDEPEND="${DEPEND}
	x11-misc/touchegg"

src_configure() {
	eqmake4 PREFIX="${EPREFIX}/usr" CONFIG_PATH="${EPREFIX}/etc"
}
