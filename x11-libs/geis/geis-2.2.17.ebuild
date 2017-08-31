# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

DESCRIPTION="An implementation of the GEIS (Gesture Engine Interface and Support) interface"
SRC_URI="https://launchpad.net/geis/trunk/${PV}/+download/${P}.tar.xz"
HOMEPAGE="https://launchpad.net/geis"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="|| ( GPL-3 LGPL-3 )"

RDEPEND="x11-libs/grail"
DEPEND="${RDEPEND}"

PATCHES=( "${FILESDIR}/${P}-gcc6.patch" )

src_prepare() {
	default
	sed -i 's/python3 >= 3.2/python-3.4 >= 3.2/g' configure;
}
