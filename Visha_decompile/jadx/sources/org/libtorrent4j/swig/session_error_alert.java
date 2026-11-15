package org.libtorrent4j.swig;

public class session_error_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.session_error_alert_priority_get());
    public static final int alert_type = libtorrent_jni.session_error_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.session_error_alert_static_category_get(), false);

    public session_error_alert(long j, boolean z) {
        super(libtorrent_jni.session_error_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(session_error_alert session_error_alertVar) {
        if (session_error_alertVar == null) {
            return 0L;
        }
        return session_error_alertVar.swigCPtr;
    }

    public static long swigRelease(session_error_alert session_error_alertVar) {
        if (session_error_alertVar == null) {
            return 0L;
        }
        if (!session_error_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = session_error_alertVar.swigCPtr;
        session_error_alertVar.swigCMemOwn = false;
        session_error_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.session_error_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session_error_alert(j);
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
        long jSession_error_alert_error_get = libtorrent_jni.session_error_alert_error_get(this.swigCPtr, this);
        if (jSession_error_alert_error_get == 0) {
            return null;
        }
        return new error_code(jSession_error_alert_error_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.session_error_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.session_error_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.session_error_alert_what(this.swigCPtr, this);
    }
}
