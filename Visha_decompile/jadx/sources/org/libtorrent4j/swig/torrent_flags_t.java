package org.libtorrent4j.swig;

public class torrent_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public torrent_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static torrent_flags_t all() {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_all(), true);
    }

    public static torrent_flags_t from_int(int i) {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_from_int(i), true);
    }

    public static long getCPtr(torrent_flags_t torrent_flags_tVar) {
        if (torrent_flags_tVar == null) {
            return 0L;
        }
        return torrent_flags_tVar.swigCPtr;
    }

    public static long swigRelease(torrent_flags_t torrent_flags_tVar) {
        if (torrent_flags_tVar == null) {
            return 0L;
        }
        if (!torrent_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_flags_tVar.swigCPtr;
        torrent_flags_tVar.swigCMemOwn = false;
        torrent_flags_tVar.delete();
        return j;
    }

    public torrent_flags_t and_(torrent_flags_t torrent_flags_tVar) {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_and_(this.swigCPtr, this, getCPtr(torrent_flags_tVar), torrent_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(torrent_flags_t torrent_flags_tVar) {
        return libtorrent_jni.torrent_flags_t_eq(this.swigCPtr, this, getCPtr(torrent_flags_tVar), torrent_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public torrent_flags_t inv() {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(torrent_flags_t torrent_flags_tVar) {
        return libtorrent_jni.torrent_flags_t_ne(this.swigCPtr, this, getCPtr(torrent_flags_tVar), torrent_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.torrent_flags_t_non_zero(this.swigCPtr, this);
    }

    public torrent_flags_t or_(torrent_flags_t torrent_flags_tVar) {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_or_(this.swigCPtr, this, getCPtr(torrent_flags_tVar), torrent_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.torrent_flags_t_to_int(this.swigCPtr, this);
    }

    public torrent_flags_t xor_(torrent_flags_t torrent_flags_tVar) {
        return new torrent_flags_t(libtorrent_jni.torrent_flags_t_xor_(this.swigCPtr, this, getCPtr(torrent_flags_tVar), torrent_flags_tVar), true);
    }

    public torrent_flags_t() {
        this(libtorrent_jni.new_torrent_flags_t(), true);
    }
}
