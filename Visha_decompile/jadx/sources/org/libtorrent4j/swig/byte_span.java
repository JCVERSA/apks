package org.libtorrent4j.swig;

public class byte_span {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public byte_span(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(byte_span byte_spanVar) {
        if (byte_spanVar == null) {
            return 0L;
        }
        return byte_spanVar.swigCPtr;
    }

    public static long swigRelease(byte_span byte_spanVar) {
        if (byte_spanVar == null) {
            return 0L;
        }
        if (!byte_spanVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = byte_spanVar.swigCPtr;
        byte_spanVar.swigCMemOwn = false;
        byte_spanVar.delete();
        return j;
    }

    public byte at(long j) {
        return libtorrent_jni.byte_span_at(this.swigCPtr, this, j);
    }

    public byte back() {
        return libtorrent_jni.byte_span_back(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_byte_span(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean empty() {
        return libtorrent_jni.byte_span_empty(this.swigCPtr, this);
    }

    public void finalize() {
        delete();
    }

    public byte_span first(long j) {
        return new byte_span(libtorrent_jni.byte_span_first(this.swigCPtr, this, j), true);
    }

    public byte front() {
        return libtorrent_jni.byte_span_front(this.swigCPtr, this);
    }

    public byte_span last(long j) {
        return new byte_span(libtorrent_jni.byte_span_last(this.swigCPtr, this, j), true);
    }

    public long size() {
        return libtorrent_jni.byte_span_size(this.swigCPtr, this);
    }

    public byte_span subspan(long j) {
        return new byte_span(libtorrent_jni.byte_span_subspan__SWIG_0(this.swigCPtr, this, j), true);
    }

    public byte_span subspan(long j, long j2) {
        return new byte_span(libtorrent_jni.byte_span_subspan__SWIG_1(this.swigCPtr, this, j, j2), true);
    }
}
