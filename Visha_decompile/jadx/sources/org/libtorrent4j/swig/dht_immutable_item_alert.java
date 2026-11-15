package org.libtorrent4j.swig;

public class dht_immutable_item_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_immutable_item_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_immutable_item_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_immutable_item_alert_static_category_get(), false);

    public dht_immutable_item_alert(long j, boolean z) {
        super(libtorrent_jni.dht_immutable_item_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_immutable_item_alert dht_immutable_item_alertVar) {
        if (dht_immutable_item_alertVar == null) {
            return 0L;
        }
        return dht_immutable_item_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_immutable_item_alert dht_immutable_item_alertVar) {
        if (dht_immutable_item_alertVar == null) {
            return 0L;
        }
        if (!dht_immutable_item_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_immutable_item_alertVar.swigCPtr;
        dht_immutable_item_alertVar.swigCMemOwn = false;
        dht_immutable_item_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_immutable_item_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_immutable_item_alert(j);
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

    public entry getItem() {
        long jDht_immutable_item_alert_item_get = libtorrent_jni.dht_immutable_item_alert_item_get(this.swigCPtr, this);
        if (jDht_immutable_item_alert_item_get == 0) {
            return null;
        }
        return new entry(jDht_immutable_item_alert_item_get, false);
    }

    public sha1_hash getTarget() {
        long jDht_immutable_item_alert_target_get = libtorrent_jni.dht_immutable_item_alert_target_get(this.swigCPtr, this);
        if (jDht_immutable_item_alert_target_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_immutable_item_alert_target_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_immutable_item_alert_message(this.swigCPtr, this);
    }

    public void setItem(entry entryVar) {
        libtorrent_jni.dht_immutable_item_alert_item_set(this.swigCPtr, this, entry.getCPtr(entryVar), entryVar);
    }

    public void setTarget(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_immutable_item_alert_target_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_immutable_item_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_immutable_item_alert_what(this.swigCPtr, this);
    }
}
