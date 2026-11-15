package com.transsion.audiotagger.utils.tree;

public interface TreeModel {
    void addTreeModelListener(TreeModelListener treeModelListener);

    Object getChild(Object obj, int i);

    int getChildCount(Object obj);

    int getIndexOfChild(Object obj, Object obj2);

    Object getRoot();

    boolean isLeaf(Object obj);

    void removeTreeModelListener(TreeModelListener treeModelListener);

    void valueForPathChanged(TreePath treePath, Object obj);
}
