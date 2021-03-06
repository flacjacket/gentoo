# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit font

DESCRIPTION="Open source modern DIN fonts"
HOMEPAGE="http://gidole.github.io/"
SRC_URI="http://dev.gentoo.org/~yngwin/distfiles/${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

DEPEND="app-arch/unzip"
S="${WORKDIR}/GidoleFont"
FONT_SUFFIX="otf ttf"
