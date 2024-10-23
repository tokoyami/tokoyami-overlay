# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit check-reqs font

DESCRIPTION="CJK programming font based on Iosevka and Source Han Sans"
HOMEPAGE="https://github.com/be5invis/Sarasa-Gothic"
SRC_URI="https://github.com/be5invis/Sarasa-Gothic/releases/download/v${PV}/SarasaTermSlab-TTF-${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
S=${WORKDIR}
KEYWORDS="~amd64 ~arm64"

CHECKREQS_DISK_BUILD="800M"
CHECKREQS_DISK_USR="1500M"

DEPEND="app-arch/unzip"

FONT_SUFFIX="ttf"

pkg_pretend() {
	check-reqs_pkg_pretend
}

pkg_setup() {
	check-reqs_pkg_setup
	font_pkg_setup
}
