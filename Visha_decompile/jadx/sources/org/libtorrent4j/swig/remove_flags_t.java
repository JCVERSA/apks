package org.libtorrent4j.swig;

public class remove_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public remove_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static remove_flags_t all() {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_all(), true);
    }

    public static remove_flags_t from_int(int i) {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_from_int(i), true);
    }

    public static long getCPtr(remove_flags_t remove_flags_tVar) {
        if (remove_flags_tVar == null) {
            return 0L;
        }
        return remove_flags_tVar.swigCPtr;
    }

    public static long swigRelease(remove_flags_t remove_flags_tVar) {
        if (remove_flags_tVar == null) {
            return 0L;
        }
        if (!remove_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = remove_flags_tVar.swigCPtr;
        remove_flags_tVar.swigCMemOwn = false;
        remove_flags_tVar.delete();
        return j;
    }

    public remove_flags_t and_(remove_flags_t remove_flags_tVar) {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_and_(this.swigCPtr, this, getCPtr(remove_flags_tVar), remove_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_remove_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(remove_flags_t remove_flags_tVar) {
        return libtorrent_jni.remove_flags_t_eq(this.swigCPtr, this, getCPtr(remove_flags_tVar), remove_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public remove_flags_t inv() {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(remove_flags_t remove_flags_tVar) {
        return libtorrent_jni.remove_flags_t_ne(this.swigCPtr, this, getCPtr(remove_flags_tVar), remove_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.remove_flags_t_non_zero(this.swigCPtr, this);
    }

    public remove_flags_t or_(remove_flags_t remove_flags_tVar) {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_or_(this.swigCPtr, this, getCPtr(remove_flags_tVar), remove_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.remove_flags_t_to_int(this.swigCPtr, this);
    }

    public remove_flags_t xor_(remove_flags_t remove_flags_tVar) {
        return new remove_flags_t(libtorrent_jni.remove_flags_t_xor_(this.swigCPtr, this, getCPtr(remove_flags_tVar), remove_flags_tVar), true);
    }

    public remove_flags_t() {
        this(libtorrent_jni.new_remove_flags_t(), true);
    }
}
