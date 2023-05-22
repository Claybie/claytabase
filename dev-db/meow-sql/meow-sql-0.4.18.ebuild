# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake xdg-utils

DESCRIPTION="A port of HeidiSQL to C++/Qt."
HOMEPAGE="https://github.com/ragnar-lodbrok/meow-sql"
SRC_URI="https://github.com/ragnar-lodbrok/meow-sql/archive/refs/tags/v0.4.18-alpha.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-db/mariadb
	dev-qt/qtgui
	dev-util/cmake
	dev-db/postgresql
	dev-qt/qtwidgets
	dev-qt/qtsql"
RDEPEND="${DEPEND}"

S="${WORKDIR}/meow-sql-0.4.18-alpha/"

pkg_postinst() {
		xdg_icon_cache_update
}

pkg_postrm() {
		xdg_icon_cache_update
}
