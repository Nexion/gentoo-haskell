# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Lambdabot is a development tool and advanced IRC bot"
HOMEPAGE="http://haskell.org/haskellwiki/Lambdabot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="eval"

RDEPEND="eval? ( dev-haskell/mueval )"
DEPEND="${RDEPEND}
		dev-haskell/arrows
		>dev-haskell/binary-0.2
		>=dev-haskell/cabal-1.6
		dev-haskell/data-memocombinators
		dev-haskell/haskell-src
		>=dev-haskell/haskell-src-exts-0.4.8
		dev-haskell/http
		dev-haskell/iospec
		dev-haskell/lambdabot-utils
		>=dev-haskell/logict-0.4.2
		dev-haskell/monadrandom
		>dev-haskell/mtl-2
		dev-haskell/network
		dev-haskell/numbers
		>=dev-haskell/oeis-0.2
		dev-haskell/parsec
		dev-haskell/random
		dev-haskell/readline
		dev-haskell/regex-compat
		>=dev-haskell/show-0.3
		dev-haskell/syb
		dev-haskell/tagsoup
		dev-haskell/unlambda
		dev-haskell/utf8-string
		dev-haskell/vector-space
		dev-lang/brainfuck
		>=dev-lang/ghc-6.10.4"

src_prepare() {
	epatch "${FILESDIR}/${P}-eval.patch"
	if has_version "<dev-haskell/mtl-2.0.0.0"; then
		epatch "${FILESDIR}/${P}-mtl-1.patch"
	fi
	if has_version ">=dev-haskell/show-0.4.1.1"; then
		sed -e 's@import ShowIO@import ShowFun@' \
			-i "${S}/State/L.hs" \
			-i "${S}/State/Pristine.hs" \
			|| die "Could patch State/L.hs and State/Pristine.hs for show upgrade"
	fi
	epatch "${FILESDIR}/${P}-binutils-2.21.patch"
	epatch "${FILESDIR}/${P}-ghc-7.2.patch"
	epatch "${FILESDIR}/${P}-base-4.patch"
}

src_configure() {
	haskell-cabal_src_configure $(cabal_flag eval)
}

pkg_postinst() {
	ghc-package_pkg_postinst
	elog "It may be necessary to: mkdir -p ~/.lambdabot/State && cp /usr/share/lambdabot-*/ghc-*/State/* ~/.lambdabot/State"
}
