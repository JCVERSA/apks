package com.transsion.audiotagger.utils.tree;

import java.util.EventObject;

public class TreeModelEvent extends EventObject {
    protected int[] childIndices;
    protected Object[] children;
    protected TreePath path;

    public TreeModelEvent(Object obj, Object[] objArr, int[] iArr, Object[] objArr2) {
        this(obj, new TreePath(objArr), iArr, objArr2);
    }

    public int[] getChildIndices() {
        int[] iArr = this.childIndices;
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public Object[] getChildren() {
        Object[] objArr = this.children;
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        return objArr2;
    }

    public Object[] getPath() {
        TreePath treePath = this.path;
        if (treePath != null) {
            return treePath.getPath();
        }
        return null;
    }

    public TreePath getTreePath() {
        return this.path;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getClass().getName() + " " + Integer.toString(hashCode()));
        if (this.path != null) {
            stringBuffer.append(" path " + this.path);
        }
        if (this.childIndices != null) {
            stringBuffer.append(" indices [ ");
            for (int i = 0; i < this.childIndices.length; i++) {
                stringBuffer.append(Integer.toString(this.childIndices[i]) + " ");
            }
            stringBuffer.append("]");
        }
        if (this.children != null) {
            stringBuffer.append(" children [ ");
            for (int i2 = 0; i2 < this.children.length; i2++) {
                stringBuffer.append(this.children[i2] + " ");
            }
            stringBuffer.append("]");
        }
        return stringBuffer.toString();
    }

    public TreeModelEvent(Object obj, TreePath treePath, int[] iArr, Object[] objArr) {
        super(obj);
        this.path = treePath;
        this.childIndices = iArr;
        this.children = objArr;
    }

    public TreeModelEvent(Object obj, Object[] objArr) {
        this(obj, new TreePath(objArr));
    }

    public TreeModelEvent(Object obj, TreePath treePath) {
        super(obj);
        this.path = treePath;
        this.childIndices = new int[0];
    }
}
