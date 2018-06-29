# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils

DESCRIPTION="GUI for multitouch gesture recognizer"
HOMEPAGE="https://github.com/JoseExposito/touchegg"
SRC_URI="https://github.com/JoseExposito/touchegg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5"
RDEPEND="${DEPEND}
	x11-misc/touchegg"

DOCS=( "COPYRIGHT" "README" )

PATCHES=( "${FILESDIR}/${PN}-qt5.patch" )

S="${WORKDIR}/touchegg-${PV}/touchegg-gui/"

src_configure() {
	eqmake5 PREFIX="${EPREFIX}/usr"
}

src_install() {
	# default attempts to install directly to /usr
	emake INSTALL_ROOT="${D}" install || die

	einstalldocs
}
