package com.transsion.audiotagger.utils.tree;

import android.annotation.SuppressLint;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Vector;

public class TreePath implements Serializable {
    private transient Object lastPathComponent;
    private TreePath parentPath;

    public TreePath(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            throw new IllegalArgumentException("path in TreePath must be non null and not empty.");
        }
        this.lastPathComponent = objArr[objArr.length - 1];
        if (objArr.length > 1) {
            this.parentPath = new TreePath(objArr, objArr.length - 1);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Vector vector = (Vector) objectInputStream.readObject();
        if (vector.size() <= 0 || !vector.elementAt(0).equals("lastPathComponent")) {
            return;
        }
        this.lastPathComponent = vector.elementAt(1);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Vector vector = new Vector();
        Object obj = this.lastPathComponent;
        if (obj != null && (obj instanceof Serializable)) {
            vector.addElement("lastPathComponent");
            vector.addElement(this.lastPathComponent);
        }
        objectOutputStream.writeObject(vector);
    }

    @SuppressLint({"SuspiciousIndentation"})
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TreePath)) {
            return false;
        }
        TreePath treePath = (TreePath) obj;
        if (getPathCount() != treePath.getPathCount()) {
            return false;
        }
        while (this != null) {
            if (!this.lastPathComponent.equals(treePath.lastPathComponent)) {
                return false;
            }
            treePath = treePath.parentPath;
            this = this.parentPath;
        }
        return true;
    }

    public Object getLastPathComponent() {
        return this.lastPathComponent;
    }

    public TreePath getParentPath() {
        return this.parentPath;
    }

    public Object[] getPath() {
        int pathCount = getPathCount();
        int i = pathCount - 1;
        Object[] objArr = new Object[pathCount];
        while (this != null) {
            objArr[i] = this.lastPathComponent;
            this = this.parentPath;
            i--;
        }
        return objArr;
    }

    public Object getPathComponent(int i) {
        int pathCount = getPathCount();
        if (i < 0 || i >= pathCount) {
            throw new IllegalArgumentException("Index " + i + " is out of the specified range");
        }
        for (int i2 = pathCount - 1; i2 != i; i2--) {
            this = this.parentPath;
        }
        return this.lastPathComponent;
    }

    public int getPathCount() {
        int i = 0;
        while (this != null) {
            i++;
            this = this.parentPath;
        }
        return i;
    }

    public int hashCode() {
        return this.lastPathComponent.hashCode();
    }

    public boolean isDescendant(TreePath treePath) {
        int pathCount;
        int pathCount2;
        if (treePath == this) {
            return true;
        }
        if (treePath == null || (pathCount2 = treePath.getPathCount()) < (pathCount = getPathCount())) {
            return false;
        }
        while (true) {
            int i = pathCount2 - 1;
            if (pathCount2 <= pathCount) {
                return equals(treePath);
            }
            treePath = treePath.getParentPath();
            pathCount2 = i;
        }
    }

    public TreePath pathByAddingChild(Object obj) {
        if (obj != null) {
            return new TreePath(this, obj);
        }
        throw new NullPointerException("Null child not allowed");
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int pathCount = getPathCount();
        for (int i = 0; i < pathCount; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(getPathComponent(i));
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public TreePath(Object obj) {
        if (obj != null) {
            this.lastPathComponent = obj;
            this.parentPath = null;
            return;
        }
        throw new IllegalArgumentException("path in TreePath must be non null.");
    }

    public TreePath(TreePath treePath, Object obj) {
        if (obj != null) {
            this.parentPath = treePath;
            this.lastPathComponent = obj;
            return;
        }
        throw new IllegalArgumentException("path in TreePath must be non null.");
    }

    public TreePath(Object[] objArr, int i) {
        int i2 = i - 1;
        this.lastPathComponent = objArr[i2];
        if (i > 1) {
            this.parentPath = new TreePath(objArr, i2);
        }
    }

    public TreePath() {
    }
}
