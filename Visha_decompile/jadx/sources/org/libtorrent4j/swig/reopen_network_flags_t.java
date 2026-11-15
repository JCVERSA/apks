package org.libtorrent4j.swig;

public class reopen_network_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public reopen_network_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static reopen_network_flags_t all() {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_all(), true);
    }

    public static reopen_network_flags_t from_int(int i) {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_from_int(i), true);
    }

    public static long getCPtr(reopen_network_flags_t reopen_network_flags_tVar) {
        if (reopen_network_flags_tVar == null) {
            return 0L;
        }
        return reopen_network_flags_tVar.swigCPtr;
    }

    public static long swigRelease(reopen_network_flags_t reopen_network_flags_tVar) {
        if (reopen_network_flags_tVar == null) {
            return 0L;
        }
        if (!reopen_network_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = reopen_network_flags_tVar.swigCPtr;
        reopen_network_flags_tVar.swigCMemOwn = false;
        reopen_network_flags_tVar.delete();
        return j;
    }

    public reopen_network_flags_t and_(reopen_network_flags_t reopen_network_flags_tVar) {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_and_(this.swigCPtr, this, getCPtr(reopen_network_flags_tVar), reopen_network_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_reopen_network_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(reopen_network_flags_t reopen_network_flags_tVar) {
        return libtorrent_jni.reopen_network_flags_t_eq(this.swigCPtr, this, getCPtr(reopen_network_flags_tVar), reopen_network_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public reopen_network_flags_t inv() {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(reopen_network_flags_t reopen_network_flags_tVar) {
        return libtorrent_jni.reopen_network_flags_t_ne(this.swigCPtr, this, getCPtr(reopen_network_flags_tVar), reopen_network_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.reopen_network_flags_t_non_zero(this.swigCPtr, this);
    }

    public reopen_network_flags_t or_(reopen_network_flags_t reopen_network_flags_tVar) {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_or_(this.swigCPtr, this, getCPtr(reopen_network_flags_tVar), reopen_network_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.reopen_network_flags_t_to_int(this.swigCPtr, this);
    }

    public reopen_network_flags_t xor_(reopen_network_flags_t reopen_network_flags_tVar) {
        return new reopen_network_flags_t(libtorrent_jni.reopen_network_flags_t_xor_(this.swigCPtr, this, getCPtr(reopen_network_flags_tVar), reopen_network_flags_tVar), true);
    }

    public reopen_network_flags_t() {
        this(libtorrent_jni.new_reopen_network_flags_t(), true);
    }
}
