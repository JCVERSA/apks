package org.libtorrent4j.swig;

public class deadline_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public deadline_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static deadline_flags_t all() {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_all(), true);
    }

    public static deadline_flags_t from_int(int i) {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_from_int(i), true);
    }

    public static long getCPtr(deadline_flags_t deadline_flags_tVar) {
        if (deadline_flags_tVar == null) {
            return 0L;
        }
        return deadline_flags_tVar.swigCPtr;
    }

    public static long swigRelease(deadline_flags_t deadline_flags_tVar) {
        if (deadline_flags_tVar == null) {
            return 0L;
        }
        if (!deadline_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = deadline_flags_tVar.swigCPtr;
        deadline_flags_tVar.swigCMemOwn = false;
        deadline_flags_tVar.delete();
        return j;
    }

    public deadline_flags_t and_(deadline_flags_t deadline_flags_tVar) {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_and_(this.swigCPtr, this, getCPtr(deadline_flags_tVar), deadline_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_deadline_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(deadline_flags_t deadline_flags_tVar) {
        return libtorrent_jni.deadline_flags_t_eq(this.swigCPtr, this, getCPtr(deadline_flags_tVar), deadline_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public deadline_flags_t inv() {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(deadline_flags_t deadline_flags_tVar) {
        return libtorrent_jni.deadline_flags_t_ne(this.swigCPtr, this, getCPtr(deadline_flags_tVar), deadline_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.deadline_flags_t_non_zero(this.swigCPtr, this);
    }

    public deadline_flags_t or_(deadline_flags_t deadline_flags_tVar) {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_or_(this.swigCPtr, this, getCPtr(deadline_flags_tVar), deadline_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.deadline_flags_t_to_int(this.swigCPtr, this);
    }

    public deadline_flags_t xor_(deadline_flags_t deadline_flags_tVar) {
        return new deadline_flags_t(libtorrent_jni.deadline_flags_t_xor_(this.swigCPtr, this, getCPtr(deadline_flags_tVar), deadline_flags_tVar), true);
    }

    public deadline_flags_t() {
        this(libtorrent_jni.new_deadline_flags_t(), true);
    }
}
