# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2

DESCRIPTION="GUI for multitouch gesture recognizer"
HOMEPAGE="https://github.com/JoseExposito/touchegg"
SRC_URI="https://github.com/JoseExposito/touchegg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-qt/qtcore:4
	dev-qt/qtgui:4"
RDEPEND="${DEPEND}
	x11-misc/touchegg"

S="${WORKDIR}/touchegg-${PV}/touchegg-gui/"
