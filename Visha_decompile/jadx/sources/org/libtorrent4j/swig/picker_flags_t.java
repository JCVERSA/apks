package org.libtorrent4j.swig;

public class picker_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public picker_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static picker_flags_t all() {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_all(), true);
    }

    public static picker_flags_t from_int(int i) {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_from_int(i), true);
    }

    public static long getCPtr(picker_flags_t picker_flags_tVar) {
        if (picker_flags_tVar == null) {
            return 0L;
        }
        return picker_flags_tVar.swigCPtr;
    }

    public static long swigRelease(picker_flags_t picker_flags_tVar) {
        if (picker_flags_tVar == null) {
            return 0L;
        }
        if (!picker_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = picker_flags_tVar.swigCPtr;
        picker_flags_tVar.swigCMemOwn = false;
        picker_flags_tVar.delete();
        return j;
    }

    public picker_flags_t and_(picker_flags_t picker_flags_tVar) {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_and_(this.swigCPtr, this, getCPtr(picker_flags_tVar), picker_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_picker_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(picker_flags_t picker_flags_tVar) {
        return libtorrent_jni.picker_flags_t_eq(this.swigCPtr, this, getCPtr(picker_flags_tVar), picker_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public picker_flags_t inv() {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(picker_flags_t picker_flags_tVar) {
        return libtorrent_jni.picker_flags_t_ne(this.swigCPtr, this, getCPtr(picker_flags_tVar), picker_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.picker_flags_t_non_zero(this.swigCPtr, this);
    }

    public picker_flags_t or_(picker_flags_t picker_flags_tVar) {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_or_(this.swigCPtr, this, getCPtr(picker_flags_tVar), picker_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.picker_flags_t_to_int(this.swigCPtr, this);
    }

    public picker_flags_t xor_(picker_flags_t picker_flags_tVar) {
        return new picker_flags_t(libtorrent_jni.picker_flags_t_xor_(this.swigCPtr, this, getCPtr(picker_flags_tVar), picker_flags_tVar), true);
    }

    public picker_flags_t() {
        this(libtorrent_jni.new_picker_flags_t(), true);
    }
}
