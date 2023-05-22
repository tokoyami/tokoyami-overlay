# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit check-reqs font

DESCRIPTION="CJK programming font based on Iosevka and Source Han Sans"
HOMEPAGE="https://github.com/be5invis/Sarasa-Gothic"
SRC_URI="https://github.com/be5invis/Sarasa-Gothic/releases/download/v${PV}/${PN}-ttf-${PV}.7z"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"

CHECKREQS_DISK_BUILD="1400M"
CHECKREQS_DISK_USR="1400M"

DEPEND="app-arch/p7zip"

S=${WORKDIR}
FONT_SUFFIX="ttf"

src_unpack() {
	# Using 7z directly to extract only a part of the archive.  Otherwise the archive takes ~11GiB
	# when extracted.
	7z x -i@"${FILESDIR}/term-slab-files-list.txt" "${DISTDIR}/${PN}-ttf-${PV}.7z"
}

pkg_pretend() {
	check-reqs_pkg_pretend
}

pkg_setup() {
	check-reqs_pkg_setup
	font_pkg_setup
}
