module Example where

import RegEx

type RE = RegExp Char

_0, _1 :: RE
_0 = Symbol '0'
_1 = Symbol '1'

universe1, universe2 :: RE
universe1 = Star (Plus _0 _1)
universe2 = Star (Plus _1 _0)

r, s, t :: RE
r = Plus universe1 universe2
s = Plus Empty (Epsilon `Dot` universe1)
t = Star universe1
