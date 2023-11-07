# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
DISTUTILS_EXT=1
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1

DESCRIPTION="MariaDB Connector/Python allows python programs access to SQL databases."
HOMEPAGE="https://www.github.com/mariadb-corporation/mariadb-connector-python https://pypi.org/project/mariadb/"
SRC_URI="https://mirror.mariadb.org/connector-python-1.1.7/mariadb-connector-python-1.1.7.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

S="${WORKDIR}/mariadb-connector-python-1.1.7"

DOCS="README.md"

RDEPEND=">=dev-db/mariadb-connector-c-3.3.4"
BDEPEND="
	app-arch/unzip
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/unittest-or-fail[${PYTHON_USEDEP}]
	)"

python_test() {
	epytest -m unittest discover -v || die
}

distutils_enable_tests unittest
