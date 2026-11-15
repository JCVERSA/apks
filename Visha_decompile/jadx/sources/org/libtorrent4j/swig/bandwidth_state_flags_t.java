package org.libtorrent4j.swig;

public class bandwidth_state_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bandwidth_state_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static bandwidth_state_flags_t all() {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_all(), true);
    }

    public static bandwidth_state_flags_t from_int(int i) {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_from_int(i), true);
    }

    public static long getCPtr(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        if (bandwidth_state_flags_tVar == null) {
            return 0L;
        }
        return bandwidth_state_flags_tVar.swigCPtr;
    }

    public static long swigRelease(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        if (bandwidth_state_flags_tVar == null) {
            return 0L;
        }
        if (!bandwidth_state_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bandwidth_state_flags_tVar.swigCPtr;
        bandwidth_state_flags_tVar.swigCMemOwn = false;
        bandwidth_state_flags_tVar.delete();
        return j;
    }

    public bandwidth_state_flags_t and_(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_and_(this.swigCPtr, this, getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bandwidth_state_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        return libtorrent_jni.bandwidth_state_flags_t_eq(this.swigCPtr, this, getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public bandwidth_state_flags_t inv() {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        return libtorrent_jni.bandwidth_state_flags_t_ne(this.swigCPtr, this, getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.bandwidth_state_flags_t_non_zero(this.swigCPtr, this);
    }

    public bandwidth_state_flags_t or_(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_or_(this.swigCPtr, this, getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.bandwidth_state_flags_t_to_int(this.swigCPtr, this);
    }

    public bandwidth_state_flags_t xor_(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        return new bandwidth_state_flags_t(libtorrent_jni.bandwidth_state_flags_t_xor_(this.swigCPtr, this, getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar), true);
    }

    public bandwidth_state_flags_t() {
        this(libtorrent_jni.new_bandwidth_state_flags_t(), true);
    }
}
