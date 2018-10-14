# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="support for CMS/Blogging in clckwrks"
HOMEPAGE="http://www.clckwrks.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/acid-state-0.12:=[profile?] <dev-haskell/acid-state-0.15:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/clckwrks-0.24:=[profile?] <dev-haskell/clckwrks-0.25:=[profile?]
	>=dev-haskell/happstack-hsp-7.2:=[profile?] <dev-haskell/happstack-hsp-7.5:=[profile?]
	>=dev-haskell/happstack-server-7.0:=[profile?] <dev-haskell/happstack-server-7.6:=[profile?]
	>=dev-haskell/hsp-0.9:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
	>=dev-haskell/ixset-1.0:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/reform-0.2:=[profile?] <dev-haskell/reform-0.4:=[profile?]
	>=dev-haskell/reform-happstack-0.2:=[profile?] <dev-haskell/reform-happstack-0.3:=[profile?]
	>=dev-haskell/reform-hsp-0.2:=[profile?] <dev-haskell/reform-hsp-0.3:=[profile?]
	>=dev-haskell/safecopy-0.8:=[profile?]
	>=dev-haskell/tagsoup-0.13:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/uuid-1.2:=[profile?] <=dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/uuid-orphans-1.2:=[profile?] <dev-haskell/uuid-orphans-1.5:=[profile?]
	>=dev-haskell/web-plugins-0.2:=[profile?] <dev-haskell/web-plugins-0.3:=[profile?]
	>=dev-haskell/web-routes-0.27:=[profile?] <dev-haskell/web-routes-0.28:=[profile?]
	>=dev-haskell/web-routes-happstack-0.23:=[profile?] <dev-haskell/web-routes-happstack-0.24:=[profile?]
	>=dev-haskell/web-routes-th-0.22:=[profile?] <dev-haskell/web-routes-th-0.23:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/aeson-0.4:=[profile?] <dev-haskell/aeson-1.4:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	dev-haskell/hsx2hs
"

src_prepare() {
	default

	cabal_chdeps \
		'ixset                  == 1.0.*' 'ixset                  >= 1.0'
}