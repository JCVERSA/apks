package org.libtorrent4j.swig;

public class reannounce_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public reannounce_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static reannounce_flags_t all() {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_all(), true);
    }

    public static reannounce_flags_t from_int(int i) {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_from_int(i), true);
    }

    public static long getCPtr(reannounce_flags_t reannounce_flags_tVar) {
        if (reannounce_flags_tVar == null) {
            return 0L;
        }
        return reannounce_flags_tVar.swigCPtr;
    }

    public static long swigRelease(reannounce_flags_t reannounce_flags_tVar) {
        if (reannounce_flags_tVar == null) {
            return 0L;
        }
        if (!reannounce_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = reannounce_flags_tVar.swigCPtr;
        reannounce_flags_tVar.swigCMemOwn = false;
        reannounce_flags_tVar.delete();
        return j;
    }

    public reannounce_flags_t and_(reannounce_flags_t reannounce_flags_tVar) {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_and_(this.swigCPtr, this, getCPtr(reannounce_flags_tVar), reannounce_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_reannounce_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(reannounce_flags_t reannounce_flags_tVar) {
        return libtorrent_jni.reannounce_flags_t_eq(this.swigCPtr, this, getCPtr(reannounce_flags_tVar), reannounce_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public reannounce_flags_t inv() {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(reannounce_flags_t reannounce_flags_tVar) {
        return libtorrent_jni.reannounce_flags_t_ne(this.swigCPtr, this, getCPtr(reannounce_flags_tVar), reannounce_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.reannounce_flags_t_non_zero(this.swigCPtr, this);
    }

    public reannounce_flags_t or_(reannounce_flags_t reannounce_flags_tVar) {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_or_(this.swigCPtr, this, getCPtr(reannounce_flags_tVar), reannounce_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.reannounce_flags_t_to_int(this.swigCPtr, this);
    }

    public reannounce_flags_t xor_(reannounce_flags_t reannounce_flags_tVar) {
        return new reannounce_flags_t(libtorrent_jni.reannounce_flags_t_xor_(this.swigCPtr, this, getCPtr(reannounce_flags_tVar), reannounce_flags_tVar), true);
    }

    public reannounce_flags_t() {
        this(libtorrent_jni.new_reannounce_flags_t(), true);
    }
}
