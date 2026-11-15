package org.proninyaroslav.libretorrent.core.model.filetree;

import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.Iterator;

public class BencodeFileTree extends FileTree<BencodeFileTree> implements Serializable {
    private long numChangedChildren;
    private boolean selected;

    public BencodeFileTree(String str, long j, int i) {
        super(str, j, i);
        this.selected = false;
        this.numChangedChildren = 0L;
    }

    private void doSelect(boolean z, boolean z2, boolean z3) {
        F f;
        this.selected = z;
        if (z2 && (f = this.parent) != 0) {
            ((BencodeFileTree) f).onChildSelectChange(z3);
        }
        if (getChildrenCount() != 0) {
            for (BencodeFileTree bencodeFileTree : this.children.values()) {
                if (bencodeFileTree.selected != z) {
                    bencodeFileTree.doSelect(z, false, z3);
                }
            }
        }
    }

    private synchronized void onChildSelectChange(boolean z) {
        try {
            long j = this.numChangedChildren + 1;
            this.numChangedChildren = j;
            boolean z2 = j == ((long) this.children.size());
            if (z2) {
                this.numChangedChildren = 0L;
            }
            if (this.children.size() != 0 && (z || z2)) {
                Iterator it = this.children.values().iterator();
                long j2 = 0;
                while (it.hasNext()) {
                    if (((BencodeFileTree) it.next()).selected) {
                        j2++;
                    }
                }
                this.selected = j2 > 0;
                F f = this.parent;
                if (f != 0) {
                    ((BencodeFileTree) f).onChildSelectChange(z);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void select(boolean z, boolean z2) {
        doSelect(z, true, z2);
    }

    public long selectedFileSize() {
        long jSelectedFileSize = 0;
        if (this.children.size() == 0) {
            if (this.selected) {
                return size();
            }
            return 0L;
        }
        for (BencodeFileTree bencodeFileTree : this.children.values()) {
            if (bencodeFileTree.selected) {
                jSelectedFileSize += bencodeFileTree.selectedFileSize();
            }
        }
        return jSelectedFileSize;
    }

    @Override
    @NonNull
    public String toString() {
        return "BencodeFileTree{" + super.toString() + ", selected=" + this.selected + '}';
    }

    public BencodeFileTree(int i, String str, long j, int i2, BencodeFileTree bencodeFileTree) {
        super(i, str, j, i2, bencodeFileTree);
        this.selected = false;
        this.numChangedChildren = 0L;
    }

    public BencodeFileTree(String str, long j, int i, BencodeFileTree bencodeFileTree) {
        super(str, j, i, bencodeFileTree);
        this.selected = false;
        this.numChangedChildren = 0L;
    }
}
