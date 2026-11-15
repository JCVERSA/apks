package org.libtorrent4j.swig;

public class byte_array_32 {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public byte_array_32(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(byte_array_32 byte_array_32Var) {
        if (byte_array_32Var == null) {
            return 0L;
        }
        return byte_array_32Var.swigCPtr;
    }

    public static long swigRelease(byte_array_32 byte_array_32Var) {
        if (byte_array_32Var == null) {
            return 0L;
        }
        if (!byte_array_32Var.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = byte_array_32Var.swigCPtr;
        byte_array_32Var.swigCMemOwn = false;
        byte_array_32Var.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_byte_array_32(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void fill(byte b) {
        libtorrent_jni.byte_array_32_fill(this.swigCPtr, this, b);
    }

    public void finalize() {
        delete();
    }

    public byte get(int i) {
        return libtorrent_jni.byte_array_32_get(this.swigCPtr, this, i);
    }

    public boolean isEmpty() {
        return libtorrent_jni.byte_array_32_isEmpty(this.swigCPtr, this);
    }

    public void set(int i, byte b) {
        libtorrent_jni.byte_array_32_set(this.swigCPtr, this, i, b);
    }

    public int size() {
        return libtorrent_jni.byte_array_32_size(this.swigCPtr, this);
    }

    public byte_array_32() {
        this(libtorrent_jni.new_byte_array_32__SWIG_0(), true);
    }

    public byte_array_32(byte_array_32 byte_array_32Var) {
        this(libtorrent_jni.new_byte_array_32__SWIG_1(getCPtr(byte_array_32Var), byte_array_32Var), true);
    }
}
