# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-r3

DESCRIPTION="Metadata collection for leksah"
HOMEPAGE="http://leksah.org"
#SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
EGIT_REPO_URI="https://github.com/leksah/leksah-server"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri +threaded"

RDEPEND=">=dev-haskell/aeson-0.11.2.0:=[profile?] <dev-haskell/aeson-1.2:=[profile?]
	>=dev-haskell/attoparsec-0.10.0.3:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.9.0:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/binary-shared-0.8:=[profile?] <dev-haskell/binary-shared-0.9:=[profile?]
	>=dev-haskell/cabal-1.10.2.0:=[profile?] <dev-haskell/cabal-1.25:=[profile?]
	>=dev-haskell/conduit-1.0.8:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-extra-1.0.0.1:=[profile?] <dev-haskell/conduit-extra-1.2:=[profile?]
	>=dev-haskell/executable-path-0.0.3:=[profile?] <dev-haskell/executable-path-0.1:=[profile?]
	>=dev-haskell/haddock-api-2.7.2:=[profile?]
	>=dev-haskell/hslogger-1.0.7:=[profile?] <dev-haskell/hslogger-1.3:=[profile?]
	>=dev-haskell/http-4000.1.2:=[profile?] <dev-haskell/http-4000.4:=[profile?]
	>=dev-haskell/ltk-0.16.0.0:=[profile?] <dev-haskell/ltk-0.17:=[profile?]
	>=dev-haskell/parsec-3.0.0.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.0.4:=[profile?] <dev-lang/ghc-8.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.2:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/doctest-0.11.0 <dev-haskell/doctest-0.12
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag threaded threaded)
}