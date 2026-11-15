package org.proninyaroslav.libretorrent.core.model.filetree;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class FileTree<F extends FileTree<?>> implements FileNode<FileTree<?>>, Serializable {
    public static final String PARENT_DIR = "..";
    public static final String ROOT = File.separator;
    protected Map<String, F> children;
    protected int index;
    protected boolean isLeaf;
    protected String name;
    protected F parent;
    protected long size;

    public FileTree(String str, long j, int i) {
        this(-1, str, j, i, null);
    }

    public synchronized void addChild(F f) {
        this.children.put(f.getName(), f);
    }

    public boolean contains(String str) {
        return this.children.containsKey(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof FileTree)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        FileTree fileTree = (FileTree) obj;
        if (this.index != fileTree.index) {
            return false;
        }
        String str = this.name;
        return (str == null || str.equals(fileTree.name)) && this.size == fileTree.size && this.isLeaf == fileTree.isLeaf;
    }

    public F getChild(String str) {
        return this.children.get(str);
    }

    public Collection<F> getChildren() {
        return this.children.values();
    }

    public int getChildrenCount() {
        return this.children.size();
    }

    public List<Integer> getChildrenIndexes() {
        ArrayList arrayList = new ArrayList();
        Iterator<F> it = this.children.values().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().getIndex()));
        }
        return arrayList;
    }

    public Set<String> getChildrenName() {
        return this.children.keySet();
    }

    public int getIndex() {
        return this.index;
    }

    public String getName() {
        return this.name;
    }

    public F getParent() {
        return this.parent;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        while (this.parent != null) {
            sb.insert(0, File.separator + this.name);
            this = this.parent;
        }
        return sb.toString();
    }

    public String getRealName() {
        if (TextUtils.isEmpty(this.name) || !this.name.endsWith(".xdl")) {
            return this.name;
        }
        String str = this.name;
        return str.substring(0, str.length() - 4);
    }

    public String getRealPath() {
        StringBuilder sb = new StringBuilder();
        while (this.parent != null) {
            sb.insert(0, File.separator + this.getRealName());
            this = this.parent;
        }
        return sb.toString();
    }

    public int getType() {
        return this.isLeaf ? FileNode.Type.FILE : FileNode.Type.DIR;
    }

    public boolean isFile() {
        return this.isLeaf;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setParent(F f) {
        this.parent = f;
    }

    public void setType(int i) {
        this.isLeaf = i == FileNode.Type.FILE;
    }

    public long size() {
        if (this.size == 0 && this.children.size() != 0) {
            Iterator<F> it = this.children.values().iterator();
            while (it.hasNext()) {
                this.size += it.next().size();
            }
        }
        return this.size;
    }

    @NonNull
    public String toString() {
        return "FileTree{index=" + this.index + ", name='" + this.name + "', size=" + this.size + ", isLeaf=" + this.isLeaf + ", parent=" + this.parent + ", children=" + this.children.size() + '}';
    }

    public FileTree(String str, long j, int i, F f) {
        this(-1, str, j, i, f);
    }

    @Override
    public int compareTo(@NonNull FileTree fileTree) {
        return this.name.compareTo(fileTree.getName());
    }

    public FileTree(int i, String str, long j, int i2) {
        this(i, str, j, i2, null);
    }

    public FileTree(int i, String str, long j, int i2, F f) {
        this.children = new LinkedHashMap();
        this.index = i;
        this.name = str;
        this.size = j;
        this.isLeaf = i2 == FileNode.Type.FILE;
        this.parent = f;
    }
}
