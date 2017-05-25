-- | A tree data struct.

module Aima.Data.Tree where

-- | Tree class.
--
-- @t@ is a tree data.
--
-- @a@ is a tree node data.
--
-- This class is suggested to be bound with @Ord@. I think it will make the comparison more easily.
--
class Tree t where
    {-# MINIMAL parentTree, childrentTree, nodeT,  orderTree #-}

    -- | Get the parent node of a tree.
    parentTree :: t a -> t a

    -- | Get the childrent trees of a tree.
    childrentTree :: t a -> [t a]

    -- | Get the current node of a tree.
    nodeT :: t a -> a

    -- | Insert a new node to an existing tree.
    insTree :: t a -> a -> t a
    -- TODO add a default action with order

    -- | Delete a current node from the tree.
    delTree :: t a -> t a
    -- TODO add a default action with order

    -- | Order the tree.
    orderTree :: t a -> t a


-- | A Tree Node data.
data BTree a = BTree {
    parent :: BTree a
  , node   :: a
  , left   :: BTree a
  , right  :: BTree a
  } deriving Show

-- | A int node. It is easy to test and implement.
type TreeIntNode = Int

instance Eq a => Eq (BTree a) where
    (==) x y = x' == y'
      where
        x' = node x
        y' = node y

instance Ord a => Ord (BTree a) where
    (<=) x y = x' <= y'
      where
        x' = node x
        y' = node y

-- instance Tree BTree where
--
--     parentTree = parent
--
--     childrentTree t = [left t, right t]
--
--     nodeT = node
--
--     orderTree -- TODO orderTree implement
