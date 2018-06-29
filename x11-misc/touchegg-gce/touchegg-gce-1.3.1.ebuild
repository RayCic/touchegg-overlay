# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils

DESCRIPTION="GUI for multitouch gesture recognizer"
HOMEPAGE="https://github.com/Raffarti/Touchegg-gce"
SRC_URI="https://github.com/Raffarti/Touchegg-gce/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/libX11
	dev-qt/qtcore:5
	dev-qt/qtgui:5"
RDEPEND="${DEPEND}
	x11-misc/touchegg"

DOCS=( "Changelog" "README" )

S="${WORKDIR}/Touchegg-gce-${PV}/"

src_configure() {
	eqmake5 PREFIX="${EPREFIX}/usr" CONFIG_PATH="${EPREFIX}/etc"
}

src_install() {
	# default attempts to install directly to /usr
	emake INSTALL_ROOT="${D}" install || die

	einstalldocs
}
