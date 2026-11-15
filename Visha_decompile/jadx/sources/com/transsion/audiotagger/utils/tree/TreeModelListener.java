package com.transsion.audiotagger.utils.tree;

import java.util.EventListener;

public interface TreeModelListener extends EventListener {
    void treeNodesChanged(TreeModelEvent treeModelEvent);

    void treeNodesInserted(TreeModelEvent treeModelEvent);

    void treeNodesRemoved(TreeModelEvent treeModelEvent);

    void treeStructureChanged(TreeModelEvent treeModelEvent);
}
