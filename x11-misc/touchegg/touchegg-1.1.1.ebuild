# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils

DESCRIPTION="Multitouch gesture recognizer"
HOMEPAGE="https://github.com/JoseExposito/touchegg"
SRC_URI="https://github.com/JoseExposito/touchegg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="x11-libs/libX11
	x11-libs/libXtst
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtx11extras:5
	dev-qt/qtwidgets:5
	x11-libs/geis"
DEPEND="${RDEPEND}"

DOCS=( "CHANGELOG" "COPYRIGHT" "HACKING" "README" )

S="${WORKDIR}/${P}/touchegg/"

PATCHES=( "${FILESDIR}/${PN}-qt5.patch" )

src_configure() {
	eqmake5 PREFIX="${EPREFIX}/usr"
}

src_install() {
	# default attempts to install directly to /usr
	emake INSTALL_ROOT="${D}" install || die

	einstalldocs
}
