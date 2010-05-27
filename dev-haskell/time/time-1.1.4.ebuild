# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A time library"
HOMEPAGE="http://semantic.org/TimeLib/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

# upstream does not implement 'cabal test' yet
# addresses https://bugs.gentoo.org/show_bug.cgi?id=314587
RESTRICT="test"

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.6"

CABAL_CORE_LIB_GHC_PV="6.12.1 6.12.2 6.12.2.20100521 6.12.3"
