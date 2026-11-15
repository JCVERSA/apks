package org.libtorrent4j.swig;

public class add_piece_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public add_piece_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static add_piece_flags_t all() {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_all(), true);
    }

    public static add_piece_flags_t from_int(int i) {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_from_int(i), true);
    }

    public static long getCPtr(add_piece_flags_t add_piece_flags_tVar) {
        if (add_piece_flags_tVar == null) {
            return 0L;
        }
        return add_piece_flags_tVar.swigCPtr;
    }

    public static long swigRelease(add_piece_flags_t add_piece_flags_tVar) {
        if (add_piece_flags_tVar == null) {
            return 0L;
        }
        if (!add_piece_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = add_piece_flags_tVar.swigCPtr;
        add_piece_flags_tVar.swigCMemOwn = false;
        add_piece_flags_tVar.delete();
        return j;
    }

    public add_piece_flags_t and_(add_piece_flags_t add_piece_flags_tVar) {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_and_(this.swigCPtr, this, getCPtr(add_piece_flags_tVar), add_piece_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_add_piece_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(add_piece_flags_t add_piece_flags_tVar) {
        return libtorrent_jni.add_piece_flags_t_eq(this.swigCPtr, this, getCPtr(add_piece_flags_tVar), add_piece_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public add_piece_flags_t inv() {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(add_piece_flags_t add_piece_flags_tVar) {
        return libtorrent_jni.add_piece_flags_t_ne(this.swigCPtr, this, getCPtr(add_piece_flags_tVar), add_piece_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.add_piece_flags_t_non_zero(this.swigCPtr, this);
    }

    public add_piece_flags_t or_(add_piece_flags_t add_piece_flags_tVar) {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_or_(this.swigCPtr, this, getCPtr(add_piece_flags_tVar), add_piece_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.add_piece_flags_t_to_int(this.swigCPtr, this);
    }

    public add_piece_flags_t xor_(add_piece_flags_t add_piece_flags_tVar) {
        return new add_piece_flags_t(libtorrent_jni.add_piece_flags_t_xor_(this.swigCPtr, this, getCPtr(add_piece_flags_tVar), add_piece_flags_tVar), true);
    }

    public add_piece_flags_t() {
        this(libtorrent_jni.new_add_piece_flags_t(), true);
    }
}
