module Demo where

infixl 6 *+*

a *+* b = a ^ 2 + b ^ 2
-- (*+*) a b = a ^ 2 + b ^ 2

infixl 6 |-|

x |-| y = if x > y then (x - y) else (y - x)

f $ x = f x
-- f (g x) == f $ g x
