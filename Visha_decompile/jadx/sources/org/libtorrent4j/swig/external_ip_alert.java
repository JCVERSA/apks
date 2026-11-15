package org.libtorrent4j.swig;

public class external_ip_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.external_ip_alert_priority_get());
    public static final int alert_type = libtorrent_jni.external_ip_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.external_ip_alert_static_category_get(), false);

    public external_ip_alert(long j, boolean z) {
        super(libtorrent_jni.external_ip_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(external_ip_alert external_ip_alertVar) {
        if (external_ip_alertVar == null) {
            return 0L;
        }
        return external_ip_alertVar.swigCPtr;
    }

    public static long swigRelease(external_ip_alert external_ip_alertVar) {
        if (external_ip_alertVar == null) {
            return 0L;
        }
        if (!external_ip_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = external_ip_alertVar.swigCPtr;
        external_ip_alertVar.swigCMemOwn = false;
        external_ip_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.external_ip_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_external_ip_alert(j);
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

    public address get_external_address() {
        return new address(libtorrent_jni.external_ip_alert_get_external_address(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.external_ip_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.external_ip_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.external_ip_alert_what(this.swigCPtr, this);
    }
}
