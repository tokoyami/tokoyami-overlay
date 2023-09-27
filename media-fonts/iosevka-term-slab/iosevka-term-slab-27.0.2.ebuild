# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://github.com/be5invi/iosevka/"
SRC_URI="https://github.com/be5invis/iosevka/releases/download/v${PV}/ttf-${PN}-${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"

DEPEND="app-arch/unzip"

S=${WORKDIR}
FONT_SUFFIX="ttf"
