package org.libtorrent4j.swig;

public class pause_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public pause_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static pause_flags_t all() {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_all(), true);
    }

    public static pause_flags_t from_int(int i) {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_from_int(i), true);
    }

    public static long getCPtr(pause_flags_t pause_flags_tVar) {
        if (pause_flags_tVar == null) {
            return 0L;
        }
        return pause_flags_tVar.swigCPtr;
    }

    public static long swigRelease(pause_flags_t pause_flags_tVar) {
        if (pause_flags_tVar == null) {
            return 0L;
        }
        if (!pause_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = pause_flags_tVar.swigCPtr;
        pause_flags_tVar.swigCMemOwn = false;
        pause_flags_tVar.delete();
        return j;
    }

    public pause_flags_t and_(pause_flags_t pause_flags_tVar) {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_and_(this.swigCPtr, this, getCPtr(pause_flags_tVar), pause_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_pause_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(pause_flags_t pause_flags_tVar) {
        return libtorrent_jni.pause_flags_t_eq(this.swigCPtr, this, getCPtr(pause_flags_tVar), pause_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public pause_flags_t inv() {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(pause_flags_t pause_flags_tVar) {
        return libtorrent_jni.pause_flags_t_ne(this.swigCPtr, this, getCPtr(pause_flags_tVar), pause_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.pause_flags_t_non_zero(this.swigCPtr, this);
    }

    public pause_flags_t or_(pause_flags_t pause_flags_tVar) {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_or_(this.swigCPtr, this, getCPtr(pause_flags_tVar), pause_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.pause_flags_t_to_int(this.swigCPtr, this);
    }

    public pause_flags_t xor_(pause_flags_t pause_flags_tVar) {
        return new pause_flags_t(libtorrent_jni.pause_flags_t_xor_(this.swigCPtr, this, getCPtr(pause_flags_tVar), pause_flags_tVar), true);
    }

    public pause_flags_t() {
        this(libtorrent_jni.new_pause_flags_t(), true);
    }
}
