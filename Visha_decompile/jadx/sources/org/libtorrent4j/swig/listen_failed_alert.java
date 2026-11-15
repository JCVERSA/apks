package org.libtorrent4j.swig;

public class listen_failed_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.listen_failed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.listen_failed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.listen_failed_alert_static_category_get(), false);

    public listen_failed_alert(long j, boolean z) {
        super(libtorrent_jni.listen_failed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(listen_failed_alert listen_failed_alertVar) {
        if (listen_failed_alertVar == null) {
            return 0L;
        }
        return listen_failed_alertVar.swigCPtr;
    }

    public static long swigRelease(listen_failed_alert listen_failed_alertVar) {
        if (listen_failed_alertVar == null) {
            return 0L;
        }
        if (!listen_failed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = listen_failed_alertVar.swigCPtr;
        listen_failed_alertVar.swigCMemOwn = false;
        listen_failed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.listen_failed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_listen_failed_alert(j);
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
        long jListen_failed_alert_error_get = libtorrent_jni.listen_failed_alert_error_get(this.swigCPtr, this);
        if (jListen_failed_alert_error_get == 0) {
            return null;
        }
        return new error_code(jListen_failed_alert_error_get, false);
    }

    public operation_t getOp() {
        return operation_t.swigToEnum(libtorrent_jni.listen_failed_alert_op_get(this.swigCPtr, this));
    }

    public int getPort() {
        return libtorrent_jni.listen_failed_alert_port_get(this.swigCPtr, this);
    }

    public address get_address() {
        return new address(libtorrent_jni.listen_failed_alert_get_address(this.swigCPtr, this), true);
    }

    public int get_socket_type() {
        return libtorrent_jni.listen_failed_alert_get_socket_type(this.swigCPtr, this);
    }

    public String listen_interface() {
        return libtorrent_jni.listen_failed_alert_listen_interface(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.listen_failed_alert_message(this.swigCPtr, this);
    }

    public void setOp(operation_t operation_tVar) {
        libtorrent_jni.listen_failed_alert_op_set(this.swigCPtr, this, operation_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.listen_failed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.listen_failed_alert_what(this.swigCPtr, this);
    }
}
