# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Touch Frame Library"
SRC_URI="https://launchpad.net/frame/trunk/v${PV}/+download/${P}.tar.xz"
HOMEPAGE="https://launchpad.net/frame"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="|| ( GPL-3 LGPL-3 )"

RDEPEND="x11-libs/evemu"
DEPEND="${RDEPEND}"
