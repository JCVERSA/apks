package org.libtorrent4j.swig;

public class dht_bootstrap_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_bootstrap_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_bootstrap_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_bootstrap_alert_static_category_get(), false);

    public dht_bootstrap_alert(long j, boolean z) {
        super(libtorrent_jni.dht_bootstrap_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_bootstrap_alert dht_bootstrap_alertVar) {
        if (dht_bootstrap_alertVar == null) {
            return 0L;
        }
        return dht_bootstrap_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_bootstrap_alert dht_bootstrap_alertVar) {
        if (dht_bootstrap_alertVar == null) {
            return 0L;
        }
        if (!dht_bootstrap_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_bootstrap_alertVar.swigCPtr;
        dht_bootstrap_alertVar.swigCMemOwn = false;
        dht_bootstrap_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_bootstrap_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_bootstrap_alert(j);
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

    @Override
    public String message() {
        return libtorrent_jni.dht_bootstrap_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_bootstrap_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_bootstrap_alert_what(this.swigCPtr, this);
    }
}
