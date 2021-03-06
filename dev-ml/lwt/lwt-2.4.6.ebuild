# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

OASIS_BUILD_TESTS=1
# fails to build
#OASIS_BUILD_DOCS=1

inherit oasis

DESCRIPTION="Cooperative light-weight thread library for OCaml"
SRC_URI="https://github.com/ocsigen/lwt/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="http://ocsigen.org/lwt"

IUSE="gtk +react +ssl text toplevel"

DEPEND="react? ( >=dev-ml/react-1.2:= )
	dev-libs/libev
	ssl? ( >=dev-ml/ocaml-ssl-0.4.0:= )
	gtk? ( dev-ml/lablgtk:= dev-libs/glib:2 )
	text? ( >=dev-ml/ocaml-text-0.4:= )
	|| ( dev-ml/camlp4:= <dev-lang/ocaml-4.02.0 )"

RDEPEND="${DEPEND}
	!<www-servers/ocsigen-1.1"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~x86-fbsd"

DOCS=( "CHANGES" "README" )

src_configure() {
	oasis_configure_opts="$(use_enable gtk glib)
		$(use_enable react)
		$(use_enable ssl)
		$(use_enable toplevel)
		$(use_enable text)
		--disable-ppx" \
		oasis_src_configure
}
