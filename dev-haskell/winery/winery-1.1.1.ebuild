# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sustainable serialisation library"
HOMEPAGE="https://github.com/fumieval/winery#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cpu:=[profile?]
	dev-haskell/fast-builder:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/megaparsec-6.0.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/prettyprinter-ansi-terminal:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck-instances )
"
