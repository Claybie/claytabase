# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

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
	dev-db/postgresql"
RDEPEND="${DEPEND}"

S="${WORKDIR}/meow-sql-0.4.18-alpha/"
