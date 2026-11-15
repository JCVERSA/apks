package org.libtorrent4j.swig;

public class i2p_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.i2p_alert_priority_get());
    public static final int alert_type = libtorrent_jni.i2p_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.i2p_alert_static_category_get(), false);

    public i2p_alert(long j, boolean z) {
        super(libtorrent_jni.i2p_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(i2p_alert i2p_alertVar) {
        if (i2p_alertVar == null) {
            return 0L;
        }
        return i2p_alertVar.swigCPtr;
    }

    public static long swigRelease(i2p_alert i2p_alertVar) {
        if (i2p_alertVar == null) {
            return 0L;
        }
        if (!i2p_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = i2p_alertVar.swigCPtr;
        i2p_alertVar.swigCMemOwn = false;
        i2p_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.i2p_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_i2p_alert(j);
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
        long jI2p_alert_error_get = libtorrent_jni.i2p_alert_error_get(this.swigCPtr, this);
        if (jI2p_alert_error_get == 0) {
            return null;
        }
        return new error_code(jI2p_alert_error_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.i2p_alert_message(this.swigCPtr, this);
    }

    public void setError(error_code error_codeVar) {
        libtorrent_jni.i2p_alert_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.i2p_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.i2p_alert_what(this.swigCPtr, this);
    }
}
