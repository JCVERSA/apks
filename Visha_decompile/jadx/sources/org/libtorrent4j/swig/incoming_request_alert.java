package org.libtorrent4j.swig;

public class incoming_request_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.incoming_request_alert_static_category_get(), false);
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.incoming_request_alert_priority_get());
    public static final int alert_type = libtorrent_jni.incoming_request_alert_alert_type_get();

    public incoming_request_alert(long j, boolean z) {
        super(libtorrent_jni.incoming_request_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(incoming_request_alert incoming_request_alertVar) {
        if (incoming_request_alertVar == null) {
            return 0L;
        }
        return incoming_request_alertVar.swigCPtr;
    }

    public static long swigRelease(incoming_request_alert incoming_request_alertVar) {
        if (incoming_request_alertVar == null) {
            return 0L;
        }
        if (!incoming_request_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = incoming_request_alertVar.swigCPtr;
        incoming_request_alertVar.swigCMemOwn = false;
        incoming_request_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.incoming_request_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_incoming_request_alert(j);
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

    public peer_request getReq() {
        long jIncoming_request_alert_req_get = libtorrent_jni.incoming_request_alert_req_get(this.swigCPtr, this);
        if (jIncoming_request_alert_req_get == 0) {
            return null;
        }
        return new peer_request(jIncoming_request_alert_req_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.incoming_request_alert_message(this.swigCPtr, this);
    }

    public void setReq(peer_request peer_requestVar) {
        libtorrent_jni.incoming_request_alert_req_set(this.swigCPtr, this, peer_request.getCPtr(peer_requestVar), peer_requestVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.incoming_request_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.incoming_request_alert_what(this.swigCPtr, this);
    }
}
