package org.proninyaroslav.libretorrent.core.model.filetree;

import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.Iterator;

public class TorrentContentFileTree extends FileTree<TorrentContentFileTree> implements Serializable {
    private double availability;
    private boolean isChecked;
    private long numChangedChildren;
    private FilePriority priority;
    private long receivedBytes;

    public TorrentContentFileTree(String str, long j, int i) {
        super(str, j, i);
        this.priority = new FilePriority(FilePriority.Type.IGNORE);
        this.receivedBytes = 0L;
        this.availability = -1.0d;
        this.numChangedChildren = 0L;
        this.isChecked = true;
    }

    private void changePriority(FilePriority filePriority, boolean z, boolean z2) {
        F f;
        this.priority = filePriority;
        if (z && (f = this.parent) != 0) {
            ((TorrentContentFileTree) f).onChangePriority(filePriority, z2);
        }
        if (this.children.size() != 0) {
            for (TorrentContentFileTree torrentContentFileTree : this.children.values()) {
                if (torrentContentFileTree.priority.getType() != filePriority.getType()) {
                    torrentContentFileTree.changePriority(filePriority, false, z2);
                }
            }
        }
    }

    private synchronized void onChangePriority(FilePriority filePriority, boolean z) {
        try {
            long j = this.numChangedChildren + 1;
            this.numChangedChildren = j;
            boolean z2 = false;
            boolean z3 = j == ((long) this.children.size());
            if (z3) {
                this.numChangedChildren = 0L;
            }
            if (this.children.size() != 0 && (z || z3)) {
                for (TorrentContentFileTree torrentContentFileTree : this.children.values()) {
                    if (filePriority == null) {
                        filePriority = torrentContentFileTree.getFilePriority();
                    }
                    if (torrentContentFileTree.priority.getType() != filePriority.getType()) {
                        z2 = true;
                        break;
                    }
                }
                if (filePriority != null) {
                    if (z2) {
                        filePriority = new FilePriority(FilePriority.Type.MIXED);
                    }
                    this.priority = filePriority;
                }
                F f = this.parent;
                if (f != 0) {
                    ((TorrentContentFileTree) f).onChangePriority(this.priority, z);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        TorrentContentFileTree torrentContentFileTree = (TorrentContentFileTree) obj;
        String str = this.name;
        if (str != null) {
            return str.equals(torrentContentFileTree.name);
        }
        return torrentContentFileTree.name == null;
    }

    public double getAvailability() {
        if (this.children.size() != 0) {
            double d = 0.0d;
            long j = 0;
            double d2 = 0.0d;
            for (TorrentContentFileTree torrentContentFileTree : this.children.values()) {
                if (torrentContentFileTree.getFilePriority().getType() != FilePriority.Type.IGNORE) {
                    double availability = torrentContentFileTree.getAvailability();
                    long size = torrentContentFileTree.size();
                    if (availability >= d) {
                        d2 += availability * size;
                    }
                    j += size;
                    d = 0.0d;
                }
            }
            if (j > 0) {
                this.availability = d2 / j;
            } else {
                this.availability = -1.0d;
            }
        }
        return this.availability;
    }

    public FilePriority getFilePriority() {
        return this.priority;
    }

    public long getReceivedBytes() {
        if (this.children.size() != 0) {
            this.receivedBytes = 0L;
            Iterator it = this.children.values().iterator();
            while (it.hasNext()) {
                this.receivedBytes += ((TorrentContentFileTree) it.next()).getReceivedBytes();
            }
        }
        return this.receivedBytes;
    }

    public int hashCode() {
        String str = this.name;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public long nonIgnoreFileSize() {
        long jNonIgnoreFileSize = 0;
        if (this.children.size() == 0) {
            if (this.priority.getType() != FilePriority.Type.IGNORE) {
                return size();
            }
            return 0L;
        }
        for (TorrentContentFileTree torrentContentFileTree : this.children.values()) {
            if (torrentContentFileTree.priority.getType() != FilePriority.Type.IGNORE) {
                jNonIgnoreFileSize += torrentContentFileTree.nonIgnoreFileSize();
            }
        }
        return jNonIgnoreFileSize;
    }

    public synchronized void setAvailability(double d) {
        this.availability = d;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setPriority(@NonNull FilePriority filePriority, boolean z) {
        changePriority(filePriority, true, z);
    }

    public synchronized void setReceivedBytes(long j) {
        this.receivedBytes = j;
    }

    @Override
    @NonNull
    public String toString() {
        return "TorrentContentFileTree{" + super.toString() + ", priority=" + this.priority + ", receivedBytes=" + this.receivedBytes + ", availability=" + this.availability + '}';
    }

    public TorrentContentFileTree(int i, String str, long j, int i2, TorrentContentFileTree torrentContentFileTree) {
        super(i, str, j, i2, torrentContentFileTree);
        this.priority = new FilePriority(FilePriority.Type.IGNORE);
        this.receivedBytes = 0L;
        this.availability = -1.0d;
        this.numChangedChildren = 0L;
        this.isChecked = true;
    }

    public TorrentContentFileTree(String str, long j, int i, TorrentContentFileTree torrentContentFileTree) {
        super(str, j, i, torrentContentFileTree);
        this.priority = new FilePriority(FilePriority.Type.IGNORE);
        this.receivedBytes = 0L;
        this.availability = -1.0d;
        this.numChangedChildren = 0L;
        this.isChecked = true;
    }
}
