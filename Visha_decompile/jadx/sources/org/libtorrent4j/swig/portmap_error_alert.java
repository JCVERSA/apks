package org.libtorrent4j.swig;

public class portmap_error_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.portmap_error_alert_priority_get());
    public static final int alert_type = libtorrent_jni.portmap_error_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.portmap_error_alert_static_category_get(), false);

    public portmap_error_alert(long j, boolean z) {
        super(libtorrent_jni.portmap_error_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(portmap_error_alert portmap_error_alertVar) {
        if (portmap_error_alertVar == null) {
            return 0L;
        }
        return portmap_error_alertVar.swigCPtr;
    }

    public static long swigRelease(portmap_error_alert portmap_error_alertVar) {
        if (portmap_error_alertVar == null) {
            return 0L;
        }
        if (!portmap_error_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = portmap_error_alertVar.swigCPtr;
        portmap_error_alertVar.swigCMemOwn = false;
        portmap_error_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.portmap_error_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_portmap_error_alert(j);
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
        long jPortmap_error_alert_error_get = libtorrent_jni.portmap_error_alert_error_get(this.swigCPtr, this);
        if (jPortmap_error_alert_error_get == 0) {
            return null;
        }
        return new error_code(jPortmap_error_alert_error_get, false);
    }

    public portmap_transport getMap_transport() {
        return portmap_transport.swigToEnum(libtorrent_jni.portmap_error_alert_map_transport_get(this.swigCPtr, this));
    }

    public int get_mapping() {
        return libtorrent_jni.portmap_error_alert_get_mapping(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.portmap_error_alert_message(this.swigCPtr, this);
    }

    public void setMap_transport(portmap_transport portmap_transportVar) {
        libtorrent_jni.portmap_error_alert_map_transport_set(this.swigCPtr, this, portmap_transportVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.portmap_error_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.portmap_error_alert_what(this.swigCPtr, this);
    }
}
