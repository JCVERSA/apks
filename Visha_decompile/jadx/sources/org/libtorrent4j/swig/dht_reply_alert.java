package org.libtorrent4j.swig;

public class dht_reply_alert extends tracker_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_reply_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_reply_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_reply_alert_static_category_get(), false);

    public dht_reply_alert(long j, boolean z) {
        super(libtorrent_jni.dht_reply_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_reply_alert dht_reply_alertVar) {
        if (dht_reply_alertVar == null) {
            return 0L;
        }
        return dht_reply_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_reply_alert dht_reply_alertVar) {
        if (dht_reply_alertVar == null) {
            return 0L;
        }
        if (!dht_reply_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_reply_alertVar.swigCPtr;
        dht_reply_alertVar.swigCMemOwn = false;
        dht_reply_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_reply_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_reply_alert(j);
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

    public int getNum_peers() {
        return libtorrent_jni.dht_reply_alert_num_peers_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_reply_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_reply_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_reply_alert_what(this.swigCPtr, this);
    }
}
