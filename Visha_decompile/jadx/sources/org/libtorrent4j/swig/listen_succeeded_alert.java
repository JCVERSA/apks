package org.libtorrent4j.swig;

public class listen_succeeded_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.listen_succeeded_alert_priority_get());
    public static final int alert_type = libtorrent_jni.listen_succeeded_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.listen_succeeded_alert_static_category_get(), false);

    public listen_succeeded_alert(long j, boolean z) {
        super(libtorrent_jni.listen_succeeded_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(listen_succeeded_alert listen_succeeded_alertVar) {
        if (listen_succeeded_alertVar == null) {
            return 0L;
        }
        return listen_succeeded_alertVar.swigCPtr;
    }

    public static long swigRelease(listen_succeeded_alert listen_succeeded_alertVar) {
        if (listen_succeeded_alertVar == null) {
            return 0L;
        }
        if (!listen_succeeded_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = listen_succeeded_alertVar.swigCPtr;
        listen_succeeded_alertVar.swigCMemOwn = false;
        listen_succeeded_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.listen_succeeded_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_listen_succeeded_alert(j);
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

    public int getPort() {
        return libtorrent_jni.listen_succeeded_alert_port_get(this.swigCPtr, this);
    }

    public address get_address() {
        return new address(libtorrent_jni.listen_succeeded_alert_get_address(this.swigCPtr, this), true);
    }

    public int get_socket_type() {
        return libtorrent_jni.listen_succeeded_alert_get_socket_type(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.listen_succeeded_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.listen_succeeded_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.listen_succeeded_alert_what(this.swigCPtr, this);
    }
}
