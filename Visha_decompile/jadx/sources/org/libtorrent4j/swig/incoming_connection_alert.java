package org.libtorrent4j.swig;

public class incoming_connection_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.incoming_connection_alert_priority_get());
    public static final int alert_type = libtorrent_jni.incoming_connection_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.incoming_connection_alert_static_category_get(), false);

    public incoming_connection_alert(long j, boolean z) {
        super(libtorrent_jni.incoming_connection_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(incoming_connection_alert incoming_connection_alertVar) {
        if (incoming_connection_alertVar == null) {
            return 0L;
        }
        return incoming_connection_alertVar.swigCPtr;
    }

    public static long swigRelease(incoming_connection_alert incoming_connection_alertVar) {
        if (incoming_connection_alertVar == null) {
            return 0L;
        }
        if (!incoming_connection_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = incoming_connection_alertVar.swigCPtr;
        incoming_connection_alertVar.swigCMemOwn = false;
        incoming_connection_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.incoming_connection_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_incoming_connection_alert(j);
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

    public socket_type_t getSocket_type() {
        return socket_type_t.swigToEnum(libtorrent_jni.incoming_connection_alert_socket_type_get(this.swigCPtr, this));
    }

    public tcp_endpoint get_endpoint() {
        return new tcp_endpoint(libtorrent_jni.incoming_connection_alert_get_endpoint(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.incoming_connection_alert_message(this.swigCPtr, this);
    }

    public void setSocket_type(socket_type_t socket_type_tVar) {
        libtorrent_jni.incoming_connection_alert_socket_type_set(this.swigCPtr, this, socket_type_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.incoming_connection_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.incoming_connection_alert_what(this.swigCPtr, this);
    }
}
