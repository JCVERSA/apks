package org.libtorrent4j.swig;

public class invalid_request_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.invalid_request_alert_priority_get());
    public static final int alert_type = libtorrent_jni.invalid_request_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.invalid_request_alert_static_category_get(), false);

    public invalid_request_alert(long j, boolean z) {
        super(libtorrent_jni.invalid_request_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(invalid_request_alert invalid_request_alertVar) {
        if (invalid_request_alertVar == null) {
            return 0L;
        }
        return invalid_request_alertVar.swigCPtr;
    }

    public static long swigRelease(invalid_request_alert invalid_request_alertVar) {
        if (invalid_request_alertVar == null) {
            return 0L;
        }
        if (!invalid_request_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = invalid_request_alertVar.swigCPtr;
        invalid_request_alertVar.swigCMemOwn = false;
        invalid_request_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.invalid_request_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_invalid_request_alert(j);
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

    public boolean getPeer_interested() {
        return libtorrent_jni.invalid_request_alert_peer_interested_get(this.swigCPtr, this);
    }

    public peer_request getRequest() {
        long jInvalid_request_alert_request_get = libtorrent_jni.invalid_request_alert_request_get(this.swigCPtr, this);
        if (jInvalid_request_alert_request_get == 0) {
            return null;
        }
        return new peer_request(jInvalid_request_alert_request_get, false);
    }

    public boolean getWe_have() {
        return libtorrent_jni.invalid_request_alert_we_have_get(this.swigCPtr, this);
    }

    public boolean getWithheld() {
        return libtorrent_jni.invalid_request_alert_withheld_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.invalid_request_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.invalid_request_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.invalid_request_alert_what(this.swigCPtr, this);
    }
}
