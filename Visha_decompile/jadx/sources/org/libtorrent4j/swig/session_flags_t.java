package org.libtorrent4j.swig;

public class session_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public session_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static session_flags_t all() {
        return new session_flags_t(libtorrent_jni.session_flags_t_all(), true);
    }

    public static session_flags_t from_int(int i) {
        return new session_flags_t(libtorrent_jni.session_flags_t_from_int(i), true);
    }

    public static long getCPtr(session_flags_t session_flags_tVar) {
        if (session_flags_tVar == null) {
            return 0L;
        }
        return session_flags_tVar.swigCPtr;
    }

    public static long swigRelease(session_flags_t session_flags_tVar) {
        if (session_flags_tVar == null) {
            return 0L;
        }
        if (!session_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = session_flags_tVar.swigCPtr;
        session_flags_tVar.swigCMemOwn = false;
        session_flags_tVar.delete();
        return j;
    }

    public session_flags_t and_(session_flags_t session_flags_tVar) {
        return new session_flags_t(libtorrent_jni.session_flags_t_and_(this.swigCPtr, this, getCPtr(session_flags_tVar), session_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(session_flags_t session_flags_tVar) {
        return libtorrent_jni.session_flags_t_eq(this.swigCPtr, this, getCPtr(session_flags_tVar), session_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public session_flags_t inv() {
        return new session_flags_t(libtorrent_jni.session_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(session_flags_t session_flags_tVar) {
        return libtorrent_jni.session_flags_t_ne(this.swigCPtr, this, getCPtr(session_flags_tVar), session_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.session_flags_t_non_zero(this.swigCPtr, this);
    }

    public session_flags_t or_(session_flags_t session_flags_tVar) {
        return new session_flags_t(libtorrent_jni.session_flags_t_or_(this.swigCPtr, this, getCPtr(session_flags_tVar), session_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.session_flags_t_to_int(this.swigCPtr, this);
    }

    public session_flags_t xor_(session_flags_t session_flags_tVar) {
        return new session_flags_t(libtorrent_jni.session_flags_t_xor_(this.swigCPtr, this, getCPtr(session_flags_tVar), session_flags_tVar), true);
    }

    public session_flags_t() {
        this(libtorrent_jni.new_session_flags_t(), true);
    }
}
