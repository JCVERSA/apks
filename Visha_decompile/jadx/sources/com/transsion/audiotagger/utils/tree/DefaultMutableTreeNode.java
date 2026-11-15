package com.transsion.audiotagger.utils.tree;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.EmptyStackException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import java.util.Stack;
import java.util.Vector;

public class DefaultMutableTreeNode implements Cloneable, MutableTreeNode, Serializable {
    public static final Enumeration<TreeNode> EMPTY_ENUMERATION = new Enumeration<TreeNode>() {
        @Override
        public boolean hasMoreElements() {
            return false;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TreeNode nextElement() {
            throw new NoSuchElementException("No more elements");
        }
    };
    protected boolean allowsChildren;
    protected Vector children;
    protected MutableTreeNode parent;
    protected transient Object userObject;

    public final class BreadthFirstEnumeration implements Enumeration<TreeNode> {
        protected Queue queue;

        public final class Queue {
            QNode head;
            QNode tail;

            public final class QNode {
                public QNode next;
                public Object object;

                public QNode(Object obj, QNode qNode) {
                    this.object = obj;
                    this.next = qNode;
                }
            }

            public Queue() {
            }

            public Object dequeue() {
                QNode qNode = this.head;
                if (qNode == null) {
                    throw new NoSuchElementException("No more elements");
                }
                Object obj = qNode.object;
                QNode qNode2 = qNode.next;
                this.head = qNode2;
                if (qNode2 == null) {
                    this.tail = null;
                } else {
                    qNode.next = null;
                }
                return obj;
            }

            public void enqueue(Object obj) {
                if (this.head == null) {
                    QNode qNode = new QNode(obj, null);
                    this.tail = qNode;
                    this.head = qNode;
                } else {
                    this.tail.next = new QNode(obj, null);
                    this.tail = this.tail.next;
                }
            }

            public Object firstObject() {
                QNode qNode = this.head;
                if (qNode != null) {
                    return qNode.object;
                }
                throw new NoSuchElementException("No more elements");
            }

            public boolean isEmpty() {
                return this.head == null;
            }
        }

        public BreadthFirstEnumeration(TreeNode treeNode) {
            Vector vector = new Vector(1);
            vector.addElement(treeNode);
            Queue queue = new Queue();
            this.queue = queue;
            queue.enqueue(vector.elements());
        }

        @Override
        public boolean hasMoreElements() {
            return !this.queue.isEmpty() && ((Enumeration) this.queue.firstObject()).hasMoreElements();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TreeNode nextElement() {
            Enumeration enumeration = (Enumeration) this.queue.firstObject();
            TreeNode treeNode = (TreeNode) enumeration.nextElement();
            Enumeration enumerationChildren = treeNode.children();
            if (!enumeration.hasMoreElements()) {
                this.queue.dequeue();
            }
            if (enumerationChildren.hasMoreElements()) {
                this.queue.enqueue(enumerationChildren);
            }
            return treeNode;
        }
    }

    public final class PathBetweenNodesEnumeration implements Enumeration<TreeNode> {
        protected Stack<TreeNode> stack;

        public PathBetweenNodesEnumeration(TreeNode treeNode, TreeNode treeNode2) {
            if (treeNode == null || treeNode2 == null) {
                throw new IllegalArgumentException("argument is null");
            }
            Stack<TreeNode> stack = new Stack<>();
            this.stack = stack;
            stack.push(treeNode2);
            TreeNode parent = treeNode2;
            while (parent != treeNode) {
                parent = parent.getParent();
                if (parent == null && treeNode2 != treeNode) {
                    throw new IllegalArgumentException("node " + treeNode + " is not an ancestor of " + treeNode2);
                }
                this.stack.push(parent);
            }
        }

        @Override
        public boolean hasMoreElements() {
            return this.stack.size() > 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TreeNode nextElement() {
            try {
                return this.stack.pop();
            } catch (EmptyStackException unused) {
                throw new NoSuchElementException("No more elements");
            }
        }
    }

    public final class PostorderEnumeration implements Enumeration<TreeNode> {
        protected Enumeration<TreeNode> children;
        protected TreeNode root;
        protected Enumeration<TreeNode> subtree = DefaultMutableTreeNode.EMPTY_ENUMERATION;

        public PostorderEnumeration(TreeNode treeNode) {
            this.root = treeNode;
            this.children = treeNode.children();
        }

        @Override
        public boolean hasMoreElements() {
            return this.root != null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TreeNode nextElement() {
            if (this.subtree.hasMoreElements()) {
                return this.subtree.nextElement();
            }
            if (this.children.hasMoreElements()) {
                PostorderEnumeration postorderEnumeration = DefaultMutableTreeNode.this.new PostorderEnumeration(this.children.nextElement());
                this.subtree = postorderEnumeration;
                return postorderEnumeration.nextElement();
            }
            TreeNode treeNode = this.root;
            this.root = null;
            return treeNode;
        }
    }

    public final class PreorderEnumeration implements Enumeration<TreeNode> {
        protected Stack stack;

        public PreorderEnumeration(TreeNode treeNode) {
            Vector vector = new Vector(1);
            vector.addElement(treeNode);
            Stack stack = new Stack();
            this.stack = stack;
            stack.push(vector.elements());
        }

        @Override
        public boolean hasMoreElements() {
            return !this.stack.empty() && ((Enumeration) this.stack.peek()).hasMoreElements();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TreeNode nextElement() {
            Enumeration enumeration = (Enumeration) this.stack.peek();
            TreeNode treeNode = (TreeNode) enumeration.nextElement();
            Enumeration enumerationChildren = treeNode.children();
            if (!enumeration.hasMoreElements()) {
                this.stack.pop();
            }
            if (enumerationChildren.hasMoreElements()) {
                this.stack.push(enumerationChildren);
            }
            return treeNode;
        }
    }

    public DefaultMutableTreeNode() {
        this(null);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object[] objArr = (Object[]) objectInputStream.readObject();
        if (objArr.length <= 0 || !objArr[0].equals("userObject")) {
            return;
        }
        this.userObject = objArr[1];
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Object obj = this.userObject;
        objectOutputStream.writeObject((obj == null || !(obj instanceof Serializable)) ? new Object[0] : new Object[]{"userObject", obj});
    }

    public void add(MutableTreeNode mutableTreeNode) {
        if (mutableTreeNode == null || mutableTreeNode.getParent() != this) {
            insert(mutableTreeNode, getChildCount());
        } else {
            insert(mutableTreeNode, getChildCount() - 1);
        }
    }

    public Enumeration breadthFirstEnumeration() {
        return new BreadthFirstEnumeration(this);
    }

    @Override
    public Enumeration children() {
        Vector vector = this.children;
        return vector == null ? EMPTY_ENUMERATION : vector.elements();
    }

    public Object clone() {
        try {
            DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) super.clone();
            defaultMutableTreeNode.children = null;
            defaultMutableTreeNode.parent = null;
            return defaultMutableTreeNode;
        } catch (CloneNotSupportedException e) {
            throw new Error(e.toString());
        }
    }

    public Enumeration depthFirstEnumeration() {
        return postorderEnumeration();
    }

    @Override
    public boolean getAllowsChildren() {
        return this.allowsChildren;
    }

    public TreeNode getChildAfter(TreeNode treeNode) {
        if (treeNode == null) {
            throw new IllegalArgumentException("argument is null");
        }
        int index = getIndex(treeNode);
        if (index == -1) {
            throw new IllegalArgumentException("node is not a child");
        }
        if (index < getChildCount() - 1) {
            return getChildAt(index + 1);
        }
        return null;
    }

    @Override
    public TreeNode getChildAt(int i) {
        Vector vector = this.children;
        if (vector != null) {
            return (TreeNode) vector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException("node has no children");
    }

    public TreeNode getChildBefore(TreeNode treeNode) {
        if (treeNode == null) {
            throw new IllegalArgumentException("argument is null");
        }
        int index = getIndex(treeNode);
        if (index == -1) {
            throw new IllegalArgumentException("argument is not a child");
        }
        if (index > 0) {
            return getChildAt(index - 1);
        }
        return null;
    }

    @Override
    public int getChildCount() {
        Vector vector = this.children;
        if (vector == null) {
            return 0;
        }
        return vector.size();
    }

    public int getDepth() {
        Enumeration enumerationBreadthFirstEnumeration = breadthFirstEnumeration();
        Object objNextElement = null;
        while (enumerationBreadthFirstEnumeration.hasMoreElements()) {
            objNextElement = enumerationBreadthFirstEnumeration.nextElement();
        }
        if (objNextElement != null) {
            return ((DefaultMutableTreeNode) objNextElement).getLevel() - getLevel();
        }
        throw new Error("nodes should be null");
    }

    public TreeNode getFirstChild() {
        if (getChildCount() != 0) {
            return getChildAt(0);
        }
        throw new NoSuchElementException("node has no children");
    }

    public DefaultMutableTreeNode getFirstLeaf() {
        while (!this.isLeaf()) {
            this = (DefaultMutableTreeNode) this.getFirstChild();
        }
        return this;
    }

    @Override
    public int getIndex(TreeNode treeNode) {
        if (treeNode == null) {
            throw new IllegalArgumentException("argument is null");
        }
        if (isNodeChild(treeNode)) {
            return this.children.indexOf(treeNode);
        }
        return -1;
    }

    public TreeNode getLastChild() {
        if (getChildCount() != 0) {
            return getChildAt(getChildCount() - 1);
        }
        throw new NoSuchElementException("node has no children");
    }

    public DefaultMutableTreeNode getLastLeaf() {
        while (!this.isLeaf()) {
            this = (DefaultMutableTreeNode) this.getLastChild();
        }
        return this;
    }

    public int getLeafCount() {
        Enumeration enumerationBreadthFirstEnumeration = breadthFirstEnumeration();
        int i = 0;
        while (enumerationBreadthFirstEnumeration.hasMoreElements()) {
            if (((TreeNode) enumerationBreadthFirstEnumeration.nextElement()).isLeaf()) {
                i++;
            }
        }
        if (i >= 1) {
            return i;
        }
        throw new Error("tree has zero leaves");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.audiotagger.utils.tree.TreeNode] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public int getLevel() {
        int i = 0;
        ?? r1 = this;
        while (true) {
            TreeNode parent = r1.getParent();
            if (parent == null) {
                return i;
            }
            i++;
            r1 = parent;
        }
    }

    public DefaultMutableTreeNode getNextLeaf() {
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent();
        if (defaultMutableTreeNode == null) {
            return null;
        }
        DefaultMutableTreeNode nextSibling = getNextSibling();
        return nextSibling != null ? nextSibling.getFirstLeaf() : defaultMutableTreeNode.getNextLeaf();
    }

    public DefaultMutableTreeNode getNextNode() {
        if (getChildCount() != 0) {
            return (DefaultMutableTreeNode) getChildAt(0);
        }
        DefaultMutableTreeNode nextSibling = getNextSibling();
        if (nextSibling != null) {
            return nextSibling;
        }
        for (DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent(); defaultMutableTreeNode != null; defaultMutableTreeNode = (DefaultMutableTreeNode) defaultMutableTreeNode.getParent()) {
            DefaultMutableTreeNode nextSibling2 = defaultMutableTreeNode.getNextSibling();
            if (nextSibling2 != null) {
                return nextSibling2;
            }
        }
        return null;
    }

    public DefaultMutableTreeNode getNextSibling() {
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent();
        DefaultMutableTreeNode defaultMutableTreeNode2 = defaultMutableTreeNode == null ? null : (DefaultMutableTreeNode) defaultMutableTreeNode.getChildAfter(this);
        if (defaultMutableTreeNode2 == null || isNodeSibling(defaultMutableTreeNode2)) {
            return defaultMutableTreeNode2;
        }
        throw new Error("child of parent is not a sibling");
    }

    @Override
    public TreeNode getParent() {
        return this.parent;
    }

    public TreeNode[] getPath() {
        return getPathToRoot(this, 0);
    }

    public TreeNode[] getPathToRoot(TreeNode treeNode, int i) {
        if (treeNode == null) {
            if (i == 0) {
                return null;
            }
            return new TreeNode[i];
        }
        int i2 = i + 1;
        TreeNode[] pathToRoot = getPathToRoot(treeNode.getParent(), i2);
        pathToRoot[pathToRoot.length - i2] = treeNode;
        return pathToRoot;
    }

    public DefaultMutableTreeNode getPreviousLeaf() {
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent();
        if (defaultMutableTreeNode == null) {
            return null;
        }
        DefaultMutableTreeNode previousSibling = getPreviousSibling();
        return previousSibling != null ? previousSibling.getLastLeaf() : defaultMutableTreeNode.getPreviousLeaf();
    }

    public DefaultMutableTreeNode getPreviousNode() {
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent();
        if (defaultMutableTreeNode == null) {
            return null;
        }
        DefaultMutableTreeNode previousSibling = getPreviousSibling();
        if (previousSibling != null) {
            return previousSibling.getChildCount() == 0 ? previousSibling : previousSibling.getLastLeaf();
        }
        return defaultMutableTreeNode;
    }

    public DefaultMutableTreeNode getPreviousSibling() {
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) getParent();
        DefaultMutableTreeNode defaultMutableTreeNode2 = defaultMutableTreeNode == null ? null : (DefaultMutableTreeNode) defaultMutableTreeNode.getChildBefore(this);
        if (defaultMutableTreeNode2 == null || isNodeSibling(defaultMutableTreeNode2)) {
            return defaultMutableTreeNode2;
        }
        throw new Error("child of parent is not a sibling");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.audiotagger.utils.tree.TreeNode] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public TreeNode getRoot() {
        ?? r1 = this;
        while (true) {
            TreeNode parent = r1.getParent();
            if (parent == null) {
                return r1;
            }
            r1 = parent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v8 */
    public TreeNode getSharedAncestor(DefaultMutableTreeNode defaultMutableTreeNode) {
        int i;
        TreeNode parent;
        ?? parent2;
        if (defaultMutableTreeNode == this) {
            return this;
        }
        if (defaultMutableTreeNode == null) {
            return null;
        }
        int level = getLevel();
        int level2 = defaultMutableTreeNode.getLevel();
        if (level2 > level) {
            i = level2 - level;
            parent = this;
            parent2 = defaultMutableTreeNode;
        } else {
            i = level - level2;
            this = this;
            parent = defaultMutableTreeNode;
        }
        while (i > 0) {
            parent2 = parent2.getParent();
            i--;
        }
        while (parent2 != parent) {
            parent2 = parent2.getParent();
            parent = parent.getParent();
            if (parent2 == 0) {
                if (parent2 == 0 && parent == null) {
                    return null;
                }
                throw new Error("nodes should be null");
            }
        }
        return parent2;
    }

    public int getSiblingCount() {
        TreeNode parent = getParent();
        if (parent == null) {
            return 1;
        }
        return parent.getChildCount();
    }

    public Object getUserObject() {
        return this.userObject;
    }

    public Object[] getUserObjectPath() {
        TreeNode[] path = getPath();
        Object[] objArr = new Object[path.length];
        for (int i = 0; i < path.length; i++) {
            objArr[i] = ((DefaultMutableTreeNode) path[i]).getUserObject();
        }
        return objArr;
    }

    @Override
    public void insert(MutableTreeNode mutableTreeNode, int i) {
        if (!this.allowsChildren) {
            throw new IllegalStateException("node does not allow children");
        }
        if (mutableTreeNode == null) {
            throw new IllegalArgumentException("new child is null");
        }
        if (isNodeAncestor(mutableTreeNode)) {
            throw new IllegalArgumentException("new child is an ancestor");
        }
        MutableTreeNode mutableTreeNode2 = (MutableTreeNode) mutableTreeNode.getParent();
        if (mutableTreeNode2 != null) {
            mutableTreeNode2.remove(mutableTreeNode);
        }
        mutableTreeNode.setParent(this);
        if (this.children == null) {
            this.children = new Vector();
        }
        this.children.insertElementAt(mutableTreeNode, i);
    }

    @Override
    public boolean isLeaf() {
        return getChildCount() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.transsion.audiotagger.utils.tree.DefaultMutableTreeNode] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.audiotagger.utils.tree.TreeNode] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.transsion.audiotagger.utils.tree.TreeNode] */
    public boolean isNodeAncestor(TreeNode treeNode) {
        if (treeNode == null) {
            return false;
        }
        while (this != treeNode) {
            this = this.getParent();
            if (this == 0) {
                return false;
            }
        }
        return true;
    }

    public boolean isNodeChild(TreeNode treeNode) {
        return (treeNode == null || getChildCount() == 0 || treeNode.getParent() != this) ? false : true;
    }

    public boolean isNodeDescendant(DefaultMutableTreeNode defaultMutableTreeNode) {
        if (defaultMutableTreeNode == null) {
            return false;
        }
        return defaultMutableTreeNode.isNodeAncestor(this);
    }

    public boolean isNodeRelated(DefaultMutableTreeNode defaultMutableTreeNode) {
        return defaultMutableTreeNode != null && getRoot() == defaultMutableTreeNode.getRoot();
    }

    public boolean isNodeSibling(TreeNode treeNode) {
        boolean z = false;
        if (treeNode == null) {
            return false;
        }
        if (treeNode == this) {
            return true;
        }
        TreeNode parent = getParent();
        if (parent != null && parent == treeNode.getParent()) {
            z = true;
        }
        if (!z || ((DefaultMutableTreeNode) getParent()).isNodeChild(treeNode)) {
            return z;
        }
        throw new Error("sibling has different parent");
    }

    public boolean isRoot() {
        return getParent() == null;
    }

    public Enumeration pathFromAncestorEnumeration(TreeNode treeNode) {
        return new PathBetweenNodesEnumeration(treeNode, this);
    }

    public Enumeration postorderEnumeration() {
        return new PostorderEnumeration(this);
    }

    public Enumeration preorderEnumeration() {
        return new PreorderEnumeration(this);
    }

    @Override
    public void remove(int i) {
        MutableTreeNode mutableTreeNode = (MutableTreeNode) getChildAt(i);
        this.children.removeElementAt(i);
        mutableTreeNode.setParent(null);
    }

    public void removeAllChildren() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            remove(childCount);
        }
    }

    @Override
    public void removeFromParent() {
        MutableTreeNode mutableTreeNode = (MutableTreeNode) getParent();
        if (mutableTreeNode != null) {
            mutableTreeNode.remove(this);
        }
    }

    public void setAllowsChildren(boolean z) {
        if (z != this.allowsChildren) {
            this.allowsChildren = z;
            if (z) {
                return;
            }
            removeAllChildren();
        }
    }

    @Override
    public void setParent(MutableTreeNode mutableTreeNode) {
        this.parent = mutableTreeNode;
    }

    @Override
    public void setUserObject(Object obj) {
        this.userObject = obj;
    }

    public String toString() {
        Object obj = this.userObject;
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public DefaultMutableTreeNode(Object obj) {
        this(obj, true);
    }

    public DefaultMutableTreeNode(Object obj, boolean z) {
        this.parent = null;
        this.allowsChildren = z;
        this.userObject = obj;
    }

    @Override
    public void remove(MutableTreeNode mutableTreeNode) {
        if (mutableTreeNode != null) {
            if (isNodeChild(mutableTreeNode)) {
                remove(getIndex(mutableTreeNode));
                return;
            }
            throw new IllegalArgumentException("argument is not a child");
        }
        throw new IllegalArgumentException("argument is null");
    }
}
