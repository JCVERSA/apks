package org.libtorrent4j.swig;

public class file_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public file_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static file_flags_t all() {
        return new file_flags_t(libtorrent_jni.file_flags_t_all(), true);
    }

    public static file_flags_t from_int(int i) {
        return new file_flags_t(libtorrent_jni.file_flags_t_from_int(i), true);
    }

    public static long getCPtr(file_flags_t file_flags_tVar) {
        if (file_flags_tVar == null) {
            return 0L;
        }
        return file_flags_tVar.swigCPtr;
    }

    public static long swigRelease(file_flags_t file_flags_tVar) {
        if (file_flags_tVar == null) {
            return 0L;
        }
        if (!file_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_flags_tVar.swigCPtr;
        file_flags_tVar.swigCMemOwn = false;
        file_flags_tVar.delete();
        return j;
    }

    public file_flags_t and_(file_flags_t file_flags_tVar) {
        return new file_flags_t(libtorrent_jni.file_flags_t_and_(this.swigCPtr, this, getCPtr(file_flags_tVar), file_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(file_flags_t file_flags_tVar) {
        return libtorrent_jni.file_flags_t_eq(this.swigCPtr, this, getCPtr(file_flags_tVar), file_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public file_flags_t inv() {
        return new file_flags_t(libtorrent_jni.file_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(file_flags_t file_flags_tVar) {
        return libtorrent_jni.file_flags_t_ne(this.swigCPtr, this, getCPtr(file_flags_tVar), file_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.file_flags_t_non_zero(this.swigCPtr, this);
    }

    public file_flags_t or_(file_flags_t file_flags_tVar) {
        return new file_flags_t(libtorrent_jni.file_flags_t_or_(this.swigCPtr, this, getCPtr(file_flags_tVar), file_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.file_flags_t_to_int(this.swigCPtr, this);
    }

    public file_flags_t xor_(file_flags_t file_flags_tVar) {
        return new file_flags_t(libtorrent_jni.file_flags_t_xor_(this.swigCPtr, this, getCPtr(file_flags_tVar), file_flags_tVar), true);
    }

    public file_flags_t() {
        this(libtorrent_jni.new_file_flags_t(), true);
    }
}
