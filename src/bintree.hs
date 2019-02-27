import Data.Char
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving (Show, Eq)
newtype IntTree = Tree Int 

tMapTree :: (a -> b) -> (Tree a) -> (Tree b)
tMapTree toTree (Leaf a) = Leaf (toTree a)
tMapTree toTree (Branch a b) = Branch (tMapTree toTree a) (tMapTree toTree b)

tFoldTree :: (b -> b -> b) -> (a -> b) -> (Tree a) -> b
tFoldTree op getparam (Leaf n) = getparam n
tFoldTree op getparam (Branch a b) = op (tFoldTree op getparam a) (tFoldTree op getparam b)

sumTree a = tFoldTree (+) toInteger a

-- test
x = Leaf 1
y = Leaf 2
z = Leaf 3

xy = Branch x y
yz = Branch y z
zx = Branch z x

xyz = Branch xy yz
yzx = Branch yz zx

xyzx = Branch xyz yzx

xyzx

sumTree xyzx