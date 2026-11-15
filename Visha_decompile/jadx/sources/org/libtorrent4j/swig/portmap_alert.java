package org.libtorrent4j.swig;

public class portmap_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.portmap_alert_priority_get());
    public static final int alert_type = libtorrent_jni.portmap_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.portmap_alert_static_category_get(), false);

    public portmap_alert(long j, boolean z) {
        super(libtorrent_jni.portmap_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(portmap_alert portmap_alertVar) {
        if (portmap_alertVar == null) {
            return 0L;
        }
        return portmap_alertVar.swigCPtr;
    }

    public static long swigRelease(portmap_alert portmap_alertVar) {
        if (portmap_alertVar == null) {
            return 0L;
        }
        if (!portmap_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = portmap_alertVar.swigCPtr;
        portmap_alertVar.swigCMemOwn = false;
        portmap_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.portmap_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_portmap_alert(j);
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

    public int getExternal_port() {
        return libtorrent_jni.portmap_alert_external_port_get(this.swigCPtr, this);
    }

    public portmap_protocol getMap_protocol() {
        return portmap_protocol.swigToEnum(libtorrent_jni.portmap_alert_map_protocol_get(this.swigCPtr, this));
    }

    public portmap_transport getMap_transport() {
        return portmap_transport.swigToEnum(libtorrent_jni.portmap_alert_map_transport_get(this.swigCPtr, this));
    }

    public int get_mapping() {
        return libtorrent_jni.portmap_alert_get_mapping(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.portmap_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.portmap_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.portmap_alert_what(this.swigCPtr, this);
    }
}
