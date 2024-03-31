# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="Versatile typeface for code, from code"
HOMEPAGE="http://be5invis.github.io/Iosevka"
SRC_URI="https://github.com/be5invis/Iosevka/releases/download/v${PV}/PkgTTF-IosevkaTermSlab-${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
S=${WORKDIR}
KEYWORDS="~amd64 ~arm64"

DEPEND="app-arch/unzip"

FONT_SUFFIX="ttf"
