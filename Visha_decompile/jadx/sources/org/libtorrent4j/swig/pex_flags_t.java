package org.libtorrent4j.swig;

public class pex_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public pex_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static pex_flags_t all() {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_all(), true);
    }

    public static pex_flags_t from_int(int i) {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_from_int(i), true);
    }

    public static long getCPtr(pex_flags_t pex_flags_tVar) {
        if (pex_flags_tVar == null) {
            return 0L;
        }
        return pex_flags_tVar.swigCPtr;
    }

    public static long swigRelease(pex_flags_t pex_flags_tVar) {
        if (pex_flags_tVar == null) {
            return 0L;
        }
        if (!pex_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = pex_flags_tVar.swigCPtr;
        pex_flags_tVar.swigCMemOwn = false;
        pex_flags_tVar.delete();
        return j;
    }

    public pex_flags_t and_(pex_flags_t pex_flags_tVar) {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_and_(this.swigCPtr, this, getCPtr(pex_flags_tVar), pex_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_pex_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(pex_flags_t pex_flags_tVar) {
        return libtorrent_jni.pex_flags_t_eq(this.swigCPtr, this, getCPtr(pex_flags_tVar), pex_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public pex_flags_t inv() {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(pex_flags_t pex_flags_tVar) {
        return libtorrent_jni.pex_flags_t_ne(this.swigCPtr, this, getCPtr(pex_flags_tVar), pex_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.pex_flags_t_non_zero(this.swigCPtr, this);
    }

    public pex_flags_t or_(pex_flags_t pex_flags_tVar) {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_or_(this.swigCPtr, this, getCPtr(pex_flags_tVar), pex_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.pex_flags_t_to_int(this.swigCPtr, this);
    }

    public pex_flags_t xor_(pex_flags_t pex_flags_tVar) {
        return new pex_flags_t(libtorrent_jni.pex_flags_t_xor_(this.swigCPtr, this, getCPtr(pex_flags_tVar), pex_flags_tVar), true);
    }

    public pex_flags_t() {
        this(libtorrent_jni.new_pex_flags_t(), true);
    }
}
