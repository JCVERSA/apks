package org.libtorrent4j.swig;

public class byte_array_64 {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public byte_array_64(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(byte_array_64 byte_array_64Var) {
        if (byte_array_64Var == null) {
            return 0L;
        }
        return byte_array_64Var.swigCPtr;
    }

    public static long swigRelease(byte_array_64 byte_array_64Var) {
        if (byte_array_64Var == null) {
            return 0L;
        }
        if (!byte_array_64Var.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = byte_array_64Var.swigCPtr;
        byte_array_64Var.swigCMemOwn = false;
        byte_array_64Var.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_byte_array_64(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void fill(byte b) {
        libtorrent_jni.byte_array_64_fill(this.swigCPtr, this, b);
    }

    public void finalize() {
        delete();
    }

    public byte get(int i) {
        return libtorrent_jni.byte_array_64_get(this.swigCPtr, this, i);
    }

    public boolean isEmpty() {
        return libtorrent_jni.byte_array_64_isEmpty(this.swigCPtr, this);
    }

    public void set(int i, byte b) {
        libtorrent_jni.byte_array_64_set(this.swigCPtr, this, i, b);
    }

    public int size() {
        return libtorrent_jni.byte_array_64_size(this.swigCPtr, this);
    }

    public byte_array_64() {
        this(libtorrent_jni.new_byte_array_64__SWIG_0(), true);
    }

    public byte_array_64(byte_array_64 byte_array_64Var) {
        this(libtorrent_jni.new_byte_array_64__SWIG_1(getCPtr(byte_array_64Var), byte_array_64Var), true);
    }
}
