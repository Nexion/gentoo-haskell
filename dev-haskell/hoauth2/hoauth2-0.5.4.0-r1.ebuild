# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -test

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell OAuth2 authentication client"
HOMEPAGE="https://github.com/freizl/hoauth2"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?]
	>=dev-haskell/http-conduit-2.0:=[profile?] <dev-haskell/http-conduit-2.2:=[profile?]
	>=dev-haskell/http-types-0.9:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	default

	cabal_chdeps \
		'aeson             >= 0.9    && < 0.12' 'aeson             >= 0.9' \
		'aeson             >= 0.9   && < 0.12' 'aeson             >= 0.9'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-test
}