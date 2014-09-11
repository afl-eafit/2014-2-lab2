--  Adapted from:
--  http://www1.eafit.edu.co/asicard/courses/automata-CB0081/src/RegExp.html

module RegEx where

-- A polymorphic data regular expression data type
data Eq a => RegExp a = Empty
                      | Epsilon
                      | Symbol a
                      | Star (RegExp a)
                      | Plus (RegExp a) (RegExp a)
                      | Dot  (RegExp a) (RegExp a)
                        deriving Eq
