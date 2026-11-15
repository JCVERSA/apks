package org.libtorrent4j.swig;

public class file_slice {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public file_slice(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(file_slice file_sliceVar) {
        if (file_sliceVar == null) {
            return 0L;
        }
        return file_sliceVar.swigCPtr;
    }

    public static long swigRelease(file_slice file_sliceVar) {
        if (file_sliceVar == null) {
            return 0L;
        }
        if (!file_sliceVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_sliceVar.swigCPtr;
        file_sliceVar.swigCMemOwn = false;
        file_sliceVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_slice(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public int getFile_index() {
        return libtorrent_jni.file_slice_file_index_get(this.swigCPtr, this);
    }

    public long getOffset() {
        return libtorrent_jni.file_slice_offset_get(this.swigCPtr, this);
    }

    public long getSize() {
        return libtorrent_jni.file_slice_size_get(this.swigCPtr, this);
    }

    public void setFile_index(int i) {
        libtorrent_jni.file_slice_file_index_set(this.swigCPtr, this, i);
    }

    public void setOffset(long j) {
        libtorrent_jni.file_slice_offset_set(this.swigCPtr, this, j);
    }

    public void setSize(long j) {
        libtorrent_jni.file_slice_size_set(this.swigCPtr, this, j);
    }

    public file_slice() {
        this(libtorrent_jni.new_file_slice(), true);
    }
}
