package org.libtorrent4j.swig;

public class dht_announce_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_announce_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_announce_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_announce_alert_static_category_get(), false);

    public dht_announce_alert(long j, boolean z) {
        super(libtorrent_jni.dht_announce_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_announce_alert dht_announce_alertVar) {
        if (dht_announce_alertVar == null) {
            return 0L;
        }
        return dht_announce_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_announce_alert dht_announce_alertVar) {
        if (dht_announce_alertVar == null) {
            return 0L;
        }
        if (!dht_announce_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_announce_alertVar.swigCPtr;
        dht_announce_alertVar.swigCMemOwn = false;
        dht_announce_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_announce_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_announce_alert(j);
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

    public sha1_hash getInfo_hash() {
        long jDht_announce_alert_info_hash_get = libtorrent_jni.dht_announce_alert_info_hash_get(this.swigCPtr, this);
        if (jDht_announce_alert_info_hash_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_announce_alert_info_hash_get, false);
    }

    public int getPort() {
        return libtorrent_jni.dht_announce_alert_port_get(this.swigCPtr, this);
    }

    public address get_ip() {
        return new address(libtorrent_jni.dht_announce_alert_get_ip(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_announce_alert_message(this.swigCPtr, this);
    }

    public void setInfo_hash(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_announce_alert_info_hash_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setPort(int i) {
        libtorrent_jni.dht_announce_alert_port_set(this.swigCPtr, this, i);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_announce_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_announce_alert_what(this.swigCPtr, this);
    }
}
