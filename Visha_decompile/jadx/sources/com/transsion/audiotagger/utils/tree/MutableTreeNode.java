package com.transsion.audiotagger.utils.tree;

public interface MutableTreeNode extends TreeNode {
    void insert(MutableTreeNode mutableTreeNode, int i);

    void remove(int i);

    void remove(MutableTreeNode mutableTreeNode);

    void removeFromParent();

    void setParent(MutableTreeNode mutableTreeNode);

    void setUserObject(Object obj);
}
