# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="See readme.md"
HOMEPAGE="https://github.com/tonyday567/numhask-histogram#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/foldl:=[profile?]
	>=dev-haskell/numhask-prelude-0.0.4.0:=[profile?]
	>=dev-haskell/numhask-range-0.2.2.0:=[profile?]
	dev-haskell/tdigest:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/doctest
		dev-haskell/protolude
		dev-haskell/tasty )
"
