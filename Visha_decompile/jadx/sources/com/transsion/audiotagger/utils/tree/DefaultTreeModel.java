package com.transsion.audiotagger.utils.tree;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.EventListener;
import java.util.Vector;

public class DefaultTreeModel implements Serializable, TreeModel {
    protected boolean asksAllowsChildren;
    protected EventListenerList listenerList;
    protected TreeNode root;

    public DefaultTreeModel(TreeNode treeNode) {
        this(treeNode, false);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Vector vector = (Vector) objectInputStream.readObject();
        if (vector.size() <= 0 || !vector.elementAt(0).equals("root")) {
            return;
        }
        this.root = (TreeNode) vector.elementAt(1);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Vector vector = new Vector();
        objectOutputStream.defaultWriteObject();
        TreeNode treeNode = this.root;
        if (treeNode != null && (treeNode instanceof Serializable)) {
            vector.addElement("root");
            vector.addElement(this.root);
        }
        objectOutputStream.writeObject(vector);
    }

    @Override
    public void addTreeModelListener(TreeModelListener treeModelListener) {
        this.listenerList.add(TreeModelListener.class, treeModelListener);
    }

    public boolean asksAllowsChildren() {
        return this.asksAllowsChildren;
    }

    public void fireTreeNodesChanged(Object obj, Object[] objArr, int[] iArr, Object[] objArr2) {
        Object[] listenerList = this.listenerList.getListenerList();
        TreeModelEvent treeModelEvent = null;
        for (int length = listenerList.length - 2; length >= 0; length -= 2) {
            if (listenerList[length] == TreeModelListener.class) {
                if (treeModelEvent == null) {
                    treeModelEvent = new TreeModelEvent(obj, objArr, iArr, objArr2);
                }
                ((TreeModelListener) listenerList[length + 1]).treeNodesChanged(treeModelEvent);
            }
        }
    }

    public void fireTreeNodesInserted(Object obj, Object[] objArr, int[] iArr, Object[] objArr2) {
        Object[] listenerList = this.listenerList.getListenerList();
        TreeModelEvent treeModelEvent = null;
        for (int length = listenerList.length - 2; length >= 0; length -= 2) {
            if (listenerList[length] == TreeModelListener.class) {
                if (treeModelEvent == null) {
                    treeModelEvent = new TreeModelEvent(obj, objArr, iArr, objArr2);
                }
                ((TreeModelListener) listenerList[length + 1]).treeNodesInserted(treeModelEvent);
            }
        }
    }

    public void fireTreeNodesRemoved(Object obj, Object[] objArr, int[] iArr, Object[] objArr2) {
        Object[] listenerList = this.listenerList.getListenerList();
        TreeModelEvent treeModelEvent = null;
        for (int length = listenerList.length - 2; length >= 0; length -= 2) {
            if (listenerList[length] == TreeModelListener.class) {
                if (treeModelEvent == null) {
                    treeModelEvent = new TreeModelEvent(obj, objArr, iArr, objArr2);
                }
                ((TreeModelListener) listenerList[length + 1]).treeNodesRemoved(treeModelEvent);
            }
        }
    }

    public void fireTreeStructureChanged(Object obj, Object[] objArr, int[] iArr, Object[] objArr2) {
        Object[] listenerList = this.listenerList.getListenerList();
        TreeModelEvent treeModelEvent = null;
        for (int length = listenerList.length - 2; length >= 0; length -= 2) {
            if (listenerList[length] == TreeModelListener.class) {
                if (treeModelEvent == null) {
                    treeModelEvent = new TreeModelEvent(obj, objArr, iArr, objArr2);
                }
                ((TreeModelListener) listenerList[length + 1]).treeStructureChanged(treeModelEvent);
            }
        }
    }

    @Override
    public Object getChild(Object obj, int i) {
        return ((TreeNode) obj).getChildAt(i);
    }

    @Override
    public int getChildCount(Object obj) {
        return ((TreeNode) obj).getChildCount();
    }

    @Override
    public int getIndexOfChild(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return -1;
        }
        return ((TreeNode) obj).getIndex((TreeNode) obj2);
    }

    public <T extends EventListener> T[] getListeners(Class<T> cls) {
        return (T[]) this.listenerList.getListeners(cls);
    }

    public TreeNode[] getPathToRoot(TreeNode treeNode) {
        return getPathToRoot(treeNode, 0);
    }

    @Override
    public Object getRoot() {
        return this.root;
    }

    public TreeModelListener[] getTreeModelListeners() {
        return (TreeModelListener[]) this.listenerList.getListeners(TreeModelListener.class);
    }

    public void insertNodeInto(MutableTreeNode mutableTreeNode, MutableTreeNode mutableTreeNode2, int i) {
        mutableTreeNode2.insert(mutableTreeNode, i);
        nodesWereInserted(mutableTreeNode2, new int[]{i});
    }

    @Override
    public boolean isLeaf(Object obj) {
        return this.asksAllowsChildren ? !((TreeNode) obj).getAllowsChildren() : ((TreeNode) obj).isLeaf();
    }

    public void nodeChanged(TreeNode treeNode) {
        if (this.listenerList == null || treeNode == null) {
            return;
        }
        TreeNode parent = treeNode.getParent();
        if (parent == null) {
            if (treeNode == getRoot()) {
                nodesChanged(treeNode, null);
            }
        } else {
            int index = parent.getIndex(treeNode);
            if (index != -1) {
                nodesChanged(parent, new int[]{index});
            }
        }
    }

    public void nodeStructureChanged(TreeNode treeNode) {
        if (treeNode != null) {
            fireTreeStructureChanged(this, getPathToRoot(treeNode), null, null);
        }
    }

    public void nodesChanged(TreeNode treeNode, int[] iArr) {
        if (treeNode != null) {
            if (iArr == null) {
                if (treeNode == getRoot()) {
                    fireTreeNodesChanged(this, getPathToRoot(treeNode), null, null);
                    return;
                }
                return;
            }
            int length = iArr.length;
            if (length > 0) {
                Object[] objArr = new Object[length];
                for (int i = 0; i < length; i++) {
                    objArr[i] = treeNode.getChildAt(iArr[i]);
                }
                fireTreeNodesChanged(this, getPathToRoot(treeNode), iArr, objArr);
            }
        }
    }

    public void nodesWereInserted(TreeNode treeNode, int[] iArr) {
        if (this.listenerList == null || treeNode == null || iArr == null || iArr.length <= 0) {
            return;
        }
        int length = iArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = treeNode.getChildAt(iArr[i]);
        }
        fireTreeNodesInserted(this, getPathToRoot(treeNode), iArr, objArr);
    }

    public void nodesWereRemoved(TreeNode treeNode, int[] iArr, Object[] objArr) {
        if (treeNode == null || iArr == null) {
            return;
        }
        fireTreeNodesRemoved(this, getPathToRoot(treeNode), iArr, objArr);
    }

    public void reload() {
        reload(this.root);
    }

    public void removeNodeFromParent(MutableTreeNode mutableTreeNode) {
        MutableTreeNode mutableTreeNode2 = (MutableTreeNode) mutableTreeNode.getParent();
        if (mutableTreeNode2 == null) {
            throw new IllegalArgumentException("node does not have a parent.");
        }
        int[] iArr = {mutableTreeNode2.getIndex(mutableTreeNode)};
        mutableTreeNode2.remove(iArr[0]);
        nodesWereRemoved(mutableTreeNode2, iArr, new Object[]{mutableTreeNode});
    }

    @Override
    public void removeTreeModelListener(TreeModelListener treeModelListener) {
        this.listenerList.remove(TreeModelListener.class, treeModelListener);
    }

    public void setAsksAllowsChildren(boolean z) {
        this.asksAllowsChildren = z;
    }

    public void setRoot(TreeNode treeNode) {
        TreeNode treeNode2 = this.root;
        this.root = treeNode;
        if (treeNode != null || treeNode2 == null) {
            nodeStructureChanged(treeNode);
        } else {
            fireTreeStructureChanged(this, null);
        }
    }

    @Override
    public void valueForPathChanged(TreePath treePath, Object obj) {
        MutableTreeNode mutableTreeNode = (MutableTreeNode) treePath.getLastPathComponent();
        mutableTreeNode.setUserObject(obj);
        nodeChanged(mutableTreeNode);
    }

    public DefaultTreeModel(TreeNode treeNode, boolean z) {
        this.listenerList = new EventListenerList();
        this.root = treeNode;
        this.asksAllowsChildren = z;
    }

    public TreeNode[] getPathToRoot(TreeNode treeNode, int i) {
        if (treeNode == null) {
            if (i == 0) {
                return null;
            }
            return new TreeNode[i];
        }
        int i2 = i + 1;
        TreeNode[] pathToRoot = treeNode == this.root ? new TreeNode[i2] : getPathToRoot(treeNode.getParent(), i2);
        pathToRoot[pathToRoot.length - i2] = treeNode;
        return pathToRoot;
    }

    public void reload(TreeNode treeNode) {
        if (treeNode != null) {
            fireTreeStructureChanged(this, getPathToRoot(treeNode), null, null);
        }
    }

    private void fireTreeStructureChanged(Object obj, TreePath treePath) {
        Object[] listenerList = this.listenerList.getListenerList();
        TreeModelEvent treeModelEvent = null;
        for (int length = listenerList.length - 2; length >= 0; length -= 2) {
            if (listenerList[length] == TreeModelListener.class) {
                if (treeModelEvent == null) {
                    treeModelEvent = new TreeModelEvent(obj, treePath);
                }
                ((TreeModelListener) listenerList[length + 1]).treeStructureChanged(treeModelEvent);
            }
        }
    }
}
