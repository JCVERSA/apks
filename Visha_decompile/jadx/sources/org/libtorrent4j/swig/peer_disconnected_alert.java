package org.libtorrent4j.swig;

public class peer_disconnected_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_disconnected_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_disconnected_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_disconnected_alert_static_category_get(), false);

    public peer_disconnected_alert(long j, boolean z) {
        super(libtorrent_jni.peer_disconnected_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_disconnected_alert peer_disconnected_alertVar) {
        if (peer_disconnected_alertVar == null) {
            return 0L;
        }
        return peer_disconnected_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_disconnected_alert peer_disconnected_alertVar) {
        if (peer_disconnected_alertVar == null) {
            return 0L;
        }
        if (!peer_disconnected_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_disconnected_alertVar.swigCPtr;
        peer_disconnected_alertVar.swigCMemOwn = false;
        peer_disconnected_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_disconnected_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_disconnected_alert(j);
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
        long jPeer_disconnected_alert_error_get = libtorrent_jni.peer_disconnected_alert_error_get(this.swigCPtr, this);
        if (jPeer_disconnected_alert_error_get == 0) {
            return null;
        }
        return new error_code(jPeer_disconnected_alert_error_get, false);
    }

    public operation_t getOp() {
        return operation_t.swigToEnum(libtorrent_jni.peer_disconnected_alert_op_get(this.swigCPtr, this));
    }

    public close_reason_t getReason() {
        return close_reason_t.swigToEnum(libtorrent_jni.peer_disconnected_alert_reason_get(this.swigCPtr, this));
    }

    public socket_type_t getSocket_type() {
        return socket_type_t.swigToEnum(libtorrent_jni.peer_disconnected_alert_socket_type_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_disconnected_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_disconnected_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_disconnected_alert_what(this.swigCPtr, this);
    }
}
