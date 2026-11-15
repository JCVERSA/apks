package com.transsion.audiotagger.utils.tree;

import java.util.Enumeration;

public interface TreeNode {
    Enumeration children();

    boolean getAllowsChildren();

    TreeNode getChildAt(int i);

    int getChildCount();

    int getIndex(TreeNode treeNode);

    TreeNode getParent();

    boolean isLeaf();
}
