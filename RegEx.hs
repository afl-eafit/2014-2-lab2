--  Adapted from:
--  http://www1.eafit.edu.co/asicard/courses/automata-CB0081/src/RegExp.html

module RegEx where

-- A polymorphic data regular expression data type
data RegExp a = Empty
              | Epsilon
              | Symbol a
              | Star (RegExp a)
              | Plus (RegExp a) (RegExp a)
              | Dot  (RegExp a) (RegExp a)

instance (Eq a) => Eq (RegExp a) where
  Epsilon      == Epsilon      = True
  Epsilon      == _            = False
  Empty        == Empty        = True
  Empty        == _            = False
  (Symbol a)   == (Symbol b)   = a == b
  (Symbol a)   == _            = False
  (Star e)     == (Star f)     = e == f
  (Star e)     == _            = False
  (Plus e1 e2) == (Plus f1 f2) = (e1 == f1) && (e2 == f2)
  (Plus e1 e2) == _            = False
  (Dot e1 e2)  == (Dot f1 f2)  = (e1 == f1) && (e2 == f2)
  (Dot e1 e2)  == _            = False
