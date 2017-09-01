# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

PYTHON_COMPAT=( python{3_4,3_5,3_6} )

inherit python-single-r1

DESCRIPTION="An implementation of the GEIS (Gesture Engine Interface and Support) interface"
SRC_URI="https://launchpad.net/geis/trunk/${PV}/+download/${P}.tar.xz"
HOMEPAGE="https://launchpad.net/geis"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="|| ( GPL-3 LGPL-3 )"

DEPEND="x11-libs/frame
	x11-libs/grail
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXi
	x11-libs/libxcb
	sys-apps/dbus"
RDEPEND="${DEPEND}
	${PYTHON_DEPS}"

PATCHES=( "${FILESDIR}/${P}-gcc6.patch" )

src_prepare() {
	default

	if use python_single_target_python3_4 ; then
		sed -i 's/python3 >= 3.2/python-3.4 >= 3.2/g' configure;
	else
		if use python_single_target_python3_5 ; then
			sed -i 's/python3 >= 3.2/python-3.5 >= 3.2/g' configure;
		else
			if use python_single_target_python3_6 ; then
				sed -i 's/python3 >= 3.2/python-3.6 >= 3.2/g' configure;
			else
				die "Something went wrong!"
			fi
		fi
	fi
}
