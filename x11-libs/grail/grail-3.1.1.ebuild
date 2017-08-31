# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

DESCRIPTION="Gesture Recognition And Instantiation Library"
SRC_URI="https://launchpad.net/grail/trunk/${PV}/+download/${P}.tar.bz2"
HOMEPAGE="https://launchpad.net/grail"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="|| ( GPL-3 LGPL-3 )"

RDEPEND="sys-libs/mtdev
	x11-libs/evemu
	x11-libs/frame"
DEPEND="${RDEPEND}"
