-- | A tree data struct.

module Data.Aima.Tree where


-- | Tree class.
--
-- @t@ is a tree data. It should have a param to save the node type.
--
-- I suggest every instance of this class also instance "Eq" and "Ord"
class (Ord (t a)) => Tree t a where
    {-# MINIMAL parentTree, childrentTree, nodeT, insTree, delTree, orderTree #-}

    -- | Get the parent node of a tree.
    parentTree :: t a -> t a

    -- | Get the childrent trees of a tree.
    childrentTree :: t a -> [t a]

    -- | Get the current node of a tree.
    nodeT :: t a -> a

    -- | Insert a new node to an existing tree.
    insTree :: t a -> a -> t a

    -- | Delete a current node from the tree.
    delTree :: t a -> t a

    -- | Order the tree.
    orderTree :: t a -> t a


-- | A Tree Node data.
data TreeNode a = TreeNode {
    parent   :: TreeNode a   -- ^ parent node.
  , children :: [TreeNode a] -- ^ childrent. If you want to use BTree, set the count of children is 2.
  , node     :: a            -- ^ node. It contains the context and some other info.
  }
