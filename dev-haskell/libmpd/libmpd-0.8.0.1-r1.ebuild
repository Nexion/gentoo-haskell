# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.2.18

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An MPD client library."
HOMEPAGE="http://github.com/joachifm/libmpd-haskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/network-2.1:=[profile?]
		<dev-haskell/network-2.5:=[profile?]
		=dev-haskell/text-0.11*:=[profile?]
		>=dev-haskell/utf8-string-0.3.1:=[profile?]
		<dev-haskell/utf8-string-0.4:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

src_prepare() {
	cabal_chdeps \
		'network >= 2.1 && < 2.4' 'network >= 2.1 && < 2.5'

	sed -e '/Test-Suite specs/,$d' \
		-i "${S}/${PN}.cabal" || die "Could not remove incomplete tests"
}
