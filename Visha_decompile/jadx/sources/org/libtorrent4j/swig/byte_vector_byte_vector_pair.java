package org.libtorrent4j.swig;

public class byte_vector_byte_vector_pair {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public byte_vector_byte_vector_pair(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(byte_vector_byte_vector_pair byte_vector_byte_vector_pairVar) {
        if (byte_vector_byte_vector_pairVar == null) {
            return 0L;
        }
        return byte_vector_byte_vector_pairVar.swigCPtr;
    }

    public static long swigRelease(byte_vector_byte_vector_pair byte_vector_byte_vector_pairVar) {
        if (byte_vector_byte_vector_pairVar == null) {
            return 0L;
        }
        if (!byte_vector_byte_vector_pairVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = byte_vector_byte_vector_pairVar.swigCPtr;
        byte_vector_byte_vector_pairVar.swigCMemOwn = false;
        byte_vector_byte_vector_pairVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_byte_vector_byte_vector_pair(j);
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

    public byte_vector getFirst() {
        long jByte_vector_byte_vector_pair_first_get = libtorrent_jni.byte_vector_byte_vector_pair_first_get(this.swigCPtr, this);
        if (jByte_vector_byte_vector_pair_first_get == 0) {
            return null;
        }
        return new byte_vector(jByte_vector_byte_vector_pair_first_get, false);
    }

    public byte_vector getSecond() {
        long jByte_vector_byte_vector_pair_second_get = libtorrent_jni.byte_vector_byte_vector_pair_second_get(this.swigCPtr, this);
        if (jByte_vector_byte_vector_pair_second_get == 0) {
            return null;
        }
        return new byte_vector(jByte_vector_byte_vector_pair_second_get, false);
    }

    public void setFirst(byte_vector byte_vectorVar) {
        libtorrent_jni.byte_vector_byte_vector_pair_first_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void setSecond(byte_vector byte_vectorVar) {
        libtorrent_jni.byte_vector_byte_vector_pair_second_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public byte_vector_byte_vector_pair() {
        this(libtorrent_jni.new_byte_vector_byte_vector_pair__SWIG_0(), true);
    }

    public byte_vector_byte_vector_pair(byte_vector byte_vectorVar, byte_vector byte_vectorVar2) {
        this(libtorrent_jni.new_byte_vector_byte_vector_pair__SWIG_1(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2), true);
    }

    public byte_vector_byte_vector_pair(byte_vector_byte_vector_pair byte_vector_byte_vector_pairVar) {
        this(libtorrent_jni.new_byte_vector_byte_vector_pair__SWIG_2(getCPtr(byte_vector_byte_vector_pairVar), byte_vector_byte_vector_pairVar), true);
    }
}
