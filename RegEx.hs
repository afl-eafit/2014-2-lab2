module RegEx where

-- Taken from:
-- http://www1.eafit.edu.co/asicard/courses/automata-CB0081/src/RegExp.html

-- A polymorphic data regular expression data type
data RegExp a = Empty
              | Epsilon
              | Symbol a
              | Star (RegExp a)
              | Plus (RegExp a) (RegExp a)
              | Dot  (RegExp a) (RegExp a)
                deriving (Show, Eq)
