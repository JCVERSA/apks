package org.libtorrent4j.swig;

public class alert_category_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public alert_category_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static alert_category_t all() {
        return new alert_category_t(libtorrent_jni.alert_category_t_all(), true);
    }

    public static alert_category_t from_int(int i) {
        return new alert_category_t(libtorrent_jni.alert_category_t_from_int(i), true);
    }

    public static long getCPtr(alert_category_t alert_category_tVar) {
        if (alert_category_tVar == null) {
            return 0L;
        }
        return alert_category_tVar.swigCPtr;
    }

    public static long swigRelease(alert_category_t alert_category_tVar) {
        if (alert_category_tVar == null) {
            return 0L;
        }
        if (!alert_category_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = alert_category_tVar.swigCPtr;
        alert_category_tVar.swigCMemOwn = false;
        alert_category_tVar.delete();
        return j;
    }

    public alert_category_t and_(alert_category_t alert_category_tVar) {
        return new alert_category_t(libtorrent_jni.alert_category_t_and_(this.swigCPtr, this, getCPtr(alert_category_tVar), alert_category_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_alert_category_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(alert_category_t alert_category_tVar) {
        return libtorrent_jni.alert_category_t_eq(this.swigCPtr, this, getCPtr(alert_category_tVar), alert_category_tVar);
    }

    public void finalize() {
        delete();
    }

    public alert_category_t inv() {
        return new alert_category_t(libtorrent_jni.alert_category_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(alert_category_t alert_category_tVar) {
        return libtorrent_jni.alert_category_t_ne(this.swigCPtr, this, getCPtr(alert_category_tVar), alert_category_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.alert_category_t_non_zero(this.swigCPtr, this);
    }

    public alert_category_t or_(alert_category_t alert_category_tVar) {
        return new alert_category_t(libtorrent_jni.alert_category_t_or_(this.swigCPtr, this, getCPtr(alert_category_tVar), alert_category_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.alert_category_t_to_int(this.swigCPtr, this);
    }

    public alert_category_t xor_(alert_category_t alert_category_tVar) {
        return new alert_category_t(libtorrent_jni.alert_category_t_xor_(this.swigCPtr, this, getCPtr(alert_category_tVar), alert_category_tVar), true);
    }

    public alert_category_t() {
        this(libtorrent_jni.new_alert_category_t(), true);
    }
}
