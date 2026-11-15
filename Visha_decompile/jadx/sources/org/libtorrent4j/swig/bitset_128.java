package org.libtorrent4j.swig;

public class bitset_128 {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bitset_128(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(bitset_128 bitset_128Var) {
        if (bitset_128Var == null) {
            return 0L;
        }
        return bitset_128Var.swigCPtr;
    }

    public static long swigRelease(bitset_128 bitset_128Var) {
        if (bitset_128Var == null) {
            return 0L;
        }
        if (!bitset_128Var.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bitset_128Var.swigCPtr;
        bitset_128Var.swigCMemOwn = false;
        bitset_128Var.delete();
        return j;
    }

    public boolean all() {
        return libtorrent_jni.bitset_128_all(this.swigCPtr, this);
    }

    public boolean any() {
        return libtorrent_jni.bitset_128_any(this.swigCPtr, this);
    }

    public long count() {
        return libtorrent_jni.bitset_128_count(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bitset_128(j);
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

    public boolean get(long j) {
        return libtorrent_jni.bitset_128_get(this.swigCPtr, this, j);
    }

    public boolean none() {
        return libtorrent_jni.bitset_128_none(this.swigCPtr, this);
    }

    public long size() {
        return libtorrent_jni.bitset_128_size(this.swigCPtr, this);
    }

    public boolean test(long j) {
        return libtorrent_jni.bitset_128_test(this.swigCPtr, this, j);
    }

    public bitset_128() {
        this(libtorrent_jni.new_bitset_128(), true);
    }
}
