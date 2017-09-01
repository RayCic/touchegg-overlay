# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2 git-r3

DESCRIPTION="Multitouch gesture recognizer"
HOMEPAGE="https://github.com/JoseExposito/touchegg"
EGIT_REPO_URI="https://github.com/JoseExposito/touchegg.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXtst
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	x11-libs/geis"
DEPEND="${RDEPEND}"
