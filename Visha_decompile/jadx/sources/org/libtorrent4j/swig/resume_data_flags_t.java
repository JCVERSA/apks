package org.libtorrent4j.swig;

public class resume_data_flags_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public resume_data_flags_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static resume_data_flags_t all() {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_all(), true);
    }

    public static resume_data_flags_t from_int(int i) {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_from_int(i), true);
    }

    public static long getCPtr(resume_data_flags_t resume_data_flags_tVar) {
        if (resume_data_flags_tVar == null) {
            return 0L;
        }
        return resume_data_flags_tVar.swigCPtr;
    }

    public static long swigRelease(resume_data_flags_t resume_data_flags_tVar) {
        if (resume_data_flags_tVar == null) {
            return 0L;
        }
        if (!resume_data_flags_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = resume_data_flags_tVar.swigCPtr;
        resume_data_flags_tVar.swigCMemOwn = false;
        resume_data_flags_tVar.delete();
        return j;
    }

    public resume_data_flags_t and_(resume_data_flags_t resume_data_flags_tVar) {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_and_(this.swigCPtr, this, getCPtr(resume_data_flags_tVar), resume_data_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_resume_data_flags_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(resume_data_flags_t resume_data_flags_tVar) {
        return libtorrent_jni.resume_data_flags_t_eq(this.swigCPtr, this, getCPtr(resume_data_flags_tVar), resume_data_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public resume_data_flags_t inv() {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(resume_data_flags_t resume_data_flags_tVar) {
        return libtorrent_jni.resume_data_flags_t_ne(this.swigCPtr, this, getCPtr(resume_data_flags_tVar), resume_data_flags_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.resume_data_flags_t_non_zero(this.swigCPtr, this);
    }

    public resume_data_flags_t or_(resume_data_flags_t resume_data_flags_tVar) {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_or_(this.swigCPtr, this, getCPtr(resume_data_flags_tVar), resume_data_flags_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.resume_data_flags_t_to_int(this.swigCPtr, this);
    }

    public resume_data_flags_t xor_(resume_data_flags_t resume_data_flags_tVar) {
        return new resume_data_flags_t(libtorrent_jni.resume_data_flags_t_xor_(this.swigCPtr, this, getCPtr(resume_data_flags_tVar), resume_data_flags_tVar), true);
    }

    public resume_data_flags_t() {
        this(libtorrent_jni.new_resume_data_flags_t(), true);
    }
}
