package org.libtorrent4j.swig;

public class write_torrent_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public write_torrent_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static write_torrent_flags_t all() {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_all(), true);
    }

    public static write_torrent_flags_t from_int(int i) {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_from_int(i), true);
    }

    public static long getCPtr(write_torrent_flags_t write_torrent_flags_tVar) {
        if (write_torrent_flags_tVar == null) {
            return 0L;
        }
        return write_torrent_flags_tVar.swigCPtr;
    }

    public static long swigRelease(write_torrent_flags_t write_torrent_flags_tVar) {
        if (write_torrent_flags_tVar == null) {
            return 0L;
        }
        if (!write_torrent_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = write_torrent_flags_tVar.swigCPtr;
        write_torrent_flags_tVar.swigCMemOwn = false;
        write_torrent_flags_tVar.delete();
        return j;
    }

    public write_torrent_flags_t and_(write_torrent_flags_t write_torrent_flags_tVar) {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_and_(this.swigCPtr, this, getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_write_torrent_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(write_torrent_flags_t write_torrent_flags_tVar) {
        return libtorrent_jni.write_torrent_flags_t_eq(this.swigCPtr, this, getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public write_torrent_flags_t inv() {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(write_torrent_flags_t write_torrent_flags_tVar) {
        return libtorrent_jni.write_torrent_flags_t_ne(this.swigCPtr, this, getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.write_torrent_flags_t_non_zero(this.swigCPtr, this);
    }

    public write_torrent_flags_t or_(write_torrent_flags_t write_torrent_flags_tVar) {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_or_(this.swigCPtr, this, getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.write_torrent_flags_t_to_int(this.swigCPtr, this);
    }

    public write_torrent_flags_t xor_(write_torrent_flags_t write_torrent_flags_tVar) {
        return new write_torrent_flags_t(libtorrent_jni.write_torrent_flags_t_xor_(this.swigCPtr, this, getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar), true);
    }

    public write_torrent_flags_t() {
        this(libtorrent_jni.new_write_torrent_flags_t(), true);
    }
}
