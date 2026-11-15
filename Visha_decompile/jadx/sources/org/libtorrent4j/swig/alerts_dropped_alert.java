package org.libtorrent4j.swig;

public class alerts_dropped_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.alerts_dropped_alert_priority_get());
    public static final int alert_type = libtorrent_jni.alerts_dropped_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.alerts_dropped_alert_static_category_get(), false);

    public alerts_dropped_alert(long j, boolean z) {
        super(libtorrent_jni.alerts_dropped_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(alerts_dropped_alert alerts_dropped_alertVar) {
        if (alerts_dropped_alertVar == null) {
            return 0L;
        }
        return alerts_dropped_alertVar.swigCPtr;
    }

    public static long swigRelease(alerts_dropped_alert alerts_dropped_alertVar) {
        if (alerts_dropped_alertVar == null) {
            return 0L;
        }
        if (!alerts_dropped_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = alerts_dropped_alertVar.swigCPtr;
        alerts_dropped_alertVar.swigCMemOwn = false;
        alerts_dropped_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.alerts_dropped_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_alerts_dropped_alert(j);
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

    public bitset_128 getDropped_alerts() {
        long jAlerts_dropped_alert_dropped_alerts_get = libtorrent_jni.alerts_dropped_alert_dropped_alerts_get(this.swigCPtr, this);
        if (jAlerts_dropped_alert_dropped_alerts_get == 0) {
            return null;
        }
        return new bitset_128(jAlerts_dropped_alert_dropped_alerts_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.alerts_dropped_alert_message(this.swigCPtr, this);
    }

    public void setDropped_alerts(bitset_128 bitset_128Var) {
        libtorrent_jni.alerts_dropped_alert_dropped_alerts_set(this.swigCPtr, this, bitset_128.getCPtr(bitset_128Var), bitset_128Var);
    }

    @Override
    public int type() {
        return libtorrent_jni.alerts_dropped_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.alerts_dropped_alert_what(this.swigCPtr, this);
    }
}
