package org.libtorrent4j.swig;

public class lsd_error_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.lsd_error_alert_priority_get());
    public static final int alert_type = libtorrent_jni.lsd_error_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.lsd_error_alert_static_category_get(), false);

    public lsd_error_alert(long j, boolean z) {
        super(libtorrent_jni.lsd_error_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(lsd_error_alert lsd_error_alertVar) {
        if (lsd_error_alertVar == null) {
            return 0L;
        }
        return lsd_error_alertVar.swigCPtr;
    }

    public static long swigRelease(lsd_error_alert lsd_error_alertVar) {
        if (lsd_error_alertVar == null) {
            return 0L;
        }
        if (!lsd_error_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = lsd_error_alertVar.swigCPtr;
        lsd_error_alertVar.swigCMemOwn = false;
        lsd_error_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.lsd_error_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_lsd_error_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void finalize() {
        delete();
    }

    public error_code getError() {
        long jLsd_error_alert_error_get = libtorrent_jni.lsd_error_alert_error_get(this.swigCPtr, this);
        if (jLsd_error_alert_error_get == 0) {
            return null;
        }
        return new error_code(jLsd_error_alert_error_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.lsd_error_alert_message(this.swigCPtr, this);
    }

    public void setError(error_code error_codeVar) {
        libtorrent_jni.lsd_error_alert_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.lsd_error_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.lsd_error_alert_what(this.swigCPtr, this);
    }
}
