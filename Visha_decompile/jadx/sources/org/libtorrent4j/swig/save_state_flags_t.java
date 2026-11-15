package org.libtorrent4j.swig;

public class save_state_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public save_state_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static save_state_flags_t all() {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_all(), true);
    }

    public static save_state_flags_t from_int(int i) {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_from_int(i), true);
    }

    public static long getCPtr(save_state_flags_t save_state_flags_tVar) {
        if (save_state_flags_tVar == null) {
            return 0L;
        }
        return save_state_flags_tVar.swigCPtr;
    }

    public static long swigRelease(save_state_flags_t save_state_flags_tVar) {
        if (save_state_flags_tVar == null) {
            return 0L;
        }
        if (!save_state_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = save_state_flags_tVar.swigCPtr;
        save_state_flags_tVar.swigCMemOwn = false;
        save_state_flags_tVar.delete();
        return j;
    }

    public save_state_flags_t and_(save_state_flags_t save_state_flags_tVar) {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_and_(this.swigCPtr, this, getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_save_state_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(save_state_flags_t save_state_flags_tVar) {
        return libtorrent_jni.save_state_flags_t_eq(this.swigCPtr, this, getCPtr(save_state_flags_tVar), save_state_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public save_state_flags_t inv() {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(save_state_flags_t save_state_flags_tVar) {
        return libtorrent_jni.save_state_flags_t_ne(this.swigCPtr, this, getCPtr(save_state_flags_tVar), save_state_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.save_state_flags_t_non_zero(this.swigCPtr, this);
    }

    public save_state_flags_t or_(save_state_flags_t save_state_flags_tVar) {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_or_(this.swigCPtr, this, getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.save_state_flags_t_to_int(this.swigCPtr, this);
    }

    public save_state_flags_t xor_(save_state_flags_t save_state_flags_tVar) {
        return new save_state_flags_t(libtorrent_jni.save_state_flags_t_xor_(this.swigCPtr, this, getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public save_state_flags_t() {
        this(libtorrent_jni.new_save_state_flags_t(), true);
    }
}
