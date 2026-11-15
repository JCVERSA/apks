package org.libtorrent4j.swig;

public class int_byte_pair {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public int_byte_pair(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(int_byte_pair int_byte_pairVar) {
        if (int_byte_pairVar == null) {
            return 0L;
        }
        return int_byte_pairVar.swigCPtr;
    }

    public static long swigRelease(int_byte_pair int_byte_pairVar) {
        if (int_byte_pairVar == null) {
            return 0L;
        }
        if (!int_byte_pairVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int_byte_pairVar.swigCPtr;
        int_byte_pairVar.swigCMemOwn = false;
        int_byte_pairVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_int_byte_pair(j);
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

    public int getFirst() {
        return libtorrent_jni.int_byte_pair_first_get(this.swigCPtr, this);
    }

    public byte getSecond() {
        return libtorrent_jni.int_byte_pair_second_get(this.swigCPtr, this);
    }

    public void setFirst(int i) {
        libtorrent_jni.int_byte_pair_first_set(this.swigCPtr, this, i);
    }

    public void setSecond(byte b) {
        libtorrent_jni.int_byte_pair_second_set(this.swigCPtr, this, b);
    }

    public int_byte_pair() {
        this(libtorrent_jni.new_int_byte_pair__SWIG_0(), true);
    }

    public int_byte_pair(int i, byte b) {
        this(libtorrent_jni.new_int_byte_pair__SWIG_1(i, b), true);
    }

    public int_byte_pair(int_byte_pair int_byte_pairVar) {
        this(libtorrent_jni.new_int_byte_pair__SWIG_2(getCPtr(int_byte_pairVar), int_byte_pairVar), true);
    }
}
