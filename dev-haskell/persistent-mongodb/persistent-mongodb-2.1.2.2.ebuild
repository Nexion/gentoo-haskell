# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="persistent-mongoDB"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Backend for the persistent library using mongoDB"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="high_precision_date"

RDEPEND=">=dev-haskell/aeson-0.6.2:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/bson-0.3.1:=[profile?] <dev-haskell/bson-0.4:=[profile?]
	>=dev-haskell/cereal-0.3.0.0:=[profile?]
	>=dev-haskell/conduit-0.5.3:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/mongodb-2.0.3:=[profile?] <dev-haskell/mongodb-3.0:=[profile?]
	>=dev-haskell/network-2.2.1.7:=[profile?]
	>=dev-haskell/path-pieces-0.1:=[profile?]
	>=dev-haskell/persistent-2.1.1:=[profile?] <dev-haskell/persistent-3:=[profile?]
	<dev-haskell/resource-pool-0.3:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-haskell/transformers-0.2.1:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag high_precision_date high_precision_date)
}
