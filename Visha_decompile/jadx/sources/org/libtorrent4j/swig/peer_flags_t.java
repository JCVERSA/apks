package org.libtorrent4j.swig;

public class peer_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public peer_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static peer_flags_t all() {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_all(), true);
    }

    public static peer_flags_t from_int(int i) {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_from_int(i), true);
    }

    public static long getCPtr(peer_flags_t peer_flags_tVar) {
        if (peer_flags_tVar == null) {
            return 0L;
        }
        return peer_flags_tVar.swigCPtr;
    }

    public static long swigRelease(peer_flags_t peer_flags_tVar) {
        if (peer_flags_tVar == null) {
            return 0L;
        }
        if (!peer_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_flags_tVar.swigCPtr;
        peer_flags_tVar.swigCMemOwn = false;
        peer_flags_tVar.delete();
        return j;
    }

    public peer_flags_t and_(peer_flags_t peer_flags_tVar) {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_and_(this.swigCPtr, this, getCPtr(peer_flags_tVar), peer_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(peer_flags_t peer_flags_tVar) {
        return libtorrent_jni.peer_flags_t_eq(this.swigCPtr, this, getCPtr(peer_flags_tVar), peer_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public peer_flags_t inv() {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(peer_flags_t peer_flags_tVar) {
        return libtorrent_jni.peer_flags_t_ne(this.swigCPtr, this, getCPtr(peer_flags_tVar), peer_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.peer_flags_t_non_zero(this.swigCPtr, this);
    }

    public peer_flags_t or_(peer_flags_t peer_flags_tVar) {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_or_(this.swigCPtr, this, getCPtr(peer_flags_tVar), peer_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.peer_flags_t_to_int(this.swigCPtr, this);
    }

    public peer_flags_t xor_(peer_flags_t peer_flags_tVar) {
        return new peer_flags_t(libtorrent_jni.peer_flags_t_xor_(this.swigCPtr, this, getCPtr(peer_flags_tVar), peer_flags_tVar), true);
    }

    public peer_flags_t() {
        this(libtorrent_jni.new_peer_flags_t(), true);
    }
}
