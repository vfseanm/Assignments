data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

insert :: (Ord a) => a -> Tree a -> Tree a

insert x EmptyTree = Node x EmptyTree EmptyTree
insert x (Node v left right)
	| x < v = Node v (insert x left) right
	| otherwise = Node v left (insert x right)

contains :: (Ord a) => a -> Tree a -> Bool
contains x EmptyTree = False
contains x (Node v left right)
	| x==v = True
	| x<v = contains x left
	| x>v = contains x right

toList :: Tree a -> [a]
toList EmptyTree = []
toList Node v left right
	= toList left ++ [v] ++ toList right


remove :: Tree a -> a -> Tree a
remove EmptyTree = EmptyTree
remove x (Node v left right)
	| x < v = Node v (remove x left) right
	| x > v = Node v left (remove x right)
	| otherwise =
		case (left, right) of
		  (EmptyTree, EmptyTree) -> EmptyTree
		  (emptyTree, _) -> right
		  (_, emptyTree) -> left
		  (Node vl _ _, Node vr _ _) ->
		    if True
                    then Node vl (remove vl left) right
		    else Node vr left (remove vr right)

bstSort :: (Ord a) => [a] -> [a]
bstSort lst = toList . foldl (flip insert) EmptyTree

printInOrder :: (Show a) => Tree a -> IO ()
printInOrder EmptyTree = return ()
printInOrder Node v left right = do
	printInorder left
	putStrLn v
	printInorder right

streamToTree :: IO (Tree Int)
streamToTree = do
	let str <- getLine
	if null str
	then return EmptyTree
	else do
	tree <- streamToTree
	return $ insert str tree


sortStream :: IO [Int]
sortStream = do
  tree <- streamToTree
  return $ toList tree
