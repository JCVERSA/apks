package org.libtorrent4j.swig;

public class status_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public status_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static status_flags_t all() {
        return new status_flags_t(libtorrent_jni.status_flags_t_all(), true);
    }

    public static status_flags_t from_int(int i) {
        return new status_flags_t(libtorrent_jni.status_flags_t_from_int(i), true);
    }

    public static long getCPtr(status_flags_t status_flags_tVar) {
        if (status_flags_tVar == null) {
            return 0L;
        }
        return status_flags_tVar.swigCPtr;
    }

    public static long swigRelease(status_flags_t status_flags_tVar) {
        if (status_flags_tVar == null) {
            return 0L;
        }
        if (!status_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = status_flags_tVar.swigCPtr;
        status_flags_tVar.swigCMemOwn = false;
        status_flags_tVar.delete();
        return j;
    }

    public status_flags_t and_(status_flags_t status_flags_tVar) {
        return new status_flags_t(libtorrent_jni.status_flags_t_and_(this.swigCPtr, this, getCPtr(status_flags_tVar), status_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_status_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(status_flags_t status_flags_tVar) {
        return libtorrent_jni.status_flags_t_eq(this.swigCPtr, this, getCPtr(status_flags_tVar), status_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public status_flags_t inv() {
        return new status_flags_t(libtorrent_jni.status_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(status_flags_t status_flags_tVar) {
        return libtorrent_jni.status_flags_t_ne(this.swigCPtr, this, getCPtr(status_flags_tVar), status_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.status_flags_t_non_zero(this.swigCPtr, this);
    }

    public status_flags_t or_(status_flags_t status_flags_tVar) {
        return new status_flags_t(libtorrent_jni.status_flags_t_or_(this.swigCPtr, this, getCPtr(status_flags_tVar), status_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.status_flags_t_to_int(this.swigCPtr, this);
    }

    public status_flags_t xor_(status_flags_t status_flags_tVar) {
        return new status_flags_t(libtorrent_jni.status_flags_t_xor_(this.swigCPtr, this, getCPtr(status_flags_tVar), status_flags_tVar), true);
    }

    public status_flags_t() {
        this(libtorrent_jni.new_status_flags_t(), true);
    }
}
