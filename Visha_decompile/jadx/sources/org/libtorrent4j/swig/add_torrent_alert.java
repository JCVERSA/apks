package org.libtorrent4j.swig;

public class add_torrent_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.add_torrent_alert_priority_get());
    public static final int alert_type = libtorrent_jni.add_torrent_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.add_torrent_alert_static_category_get(), false);

    public add_torrent_alert(long j, boolean z) {
        super(libtorrent_jni.add_torrent_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(add_torrent_alert add_torrent_alertVar) {
        if (add_torrent_alertVar == null) {
            return 0L;
        }
        return add_torrent_alertVar.swigCPtr;
    }

    public static long swigRelease(add_torrent_alert add_torrent_alertVar) {
        if (add_torrent_alertVar == null) {
            return 0L;
        }
        if (!add_torrent_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = add_torrent_alertVar.swigCPtr;
        add_torrent_alertVar.swigCMemOwn = false;
        add_torrent_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.add_torrent_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_add_torrent_alert(j);
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
        long jAdd_torrent_alert_error_get = libtorrent_jni.add_torrent_alert_error_get(this.swigCPtr, this);
        if (jAdd_torrent_alert_error_get == 0) {
            return null;
        }
        return new error_code(jAdd_torrent_alert_error_get, false);
    }

    public add_torrent_params getParams() {
        long jAdd_torrent_alert_params_get = libtorrent_jni.add_torrent_alert_params_get(this.swigCPtr, this);
        if (jAdd_torrent_alert_params_get == 0) {
            return null;
        }
        return new add_torrent_params(jAdd_torrent_alert_params_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.add_torrent_alert_message(this.swigCPtr, this);
    }

    public void setError(error_code error_codeVar) {
        libtorrent_jni.add_torrent_alert_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public void setParams(add_torrent_params add_torrent_paramsVar) {
        libtorrent_jni.add_torrent_alert_params_set(this.swigCPtr, this, add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.add_torrent_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.add_torrent_alert_what(this.swigCPtr, this);
    }
}
