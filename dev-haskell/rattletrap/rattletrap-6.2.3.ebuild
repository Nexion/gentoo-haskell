# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Parse and generate Rocket League replays"
HOMEPAGE="https://github.com/tfausak/rattletrap#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="static"

RESTRICT=test # missing test files

RDEPEND=">=dev-haskell/aeson-1.2.4:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.5:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/binary-bits-0.5:=[profile?] <dev-haskell/binary-bits-0.6:=[profile?]
	>=dev-haskell/http-client-0.5.10:=[profile?] <dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
# 	test? ( >=dev-haskell/clock-0.7.2 <dev-haskell/clock-0.8
# 		>=dev-haskell/hunit-1.6.0 <dev-haskell/hunit-1.7
# 		>=dev-haskell/temporary-1.2.1 <dev-haskell/temporary-1.4 )
# "

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag static static)
}
