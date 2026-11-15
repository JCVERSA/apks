package org.libtorrent4j.swig;

public class dht_mutable_item_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_mutable_item_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_mutable_item_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_mutable_item_alert_static_category_get(), false);

    public dht_mutable_item_alert(long j, boolean z) {
        super(libtorrent_jni.dht_mutable_item_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_mutable_item_alert dht_mutable_item_alertVar) {
        if (dht_mutable_item_alertVar == null) {
            return 0L;
        }
        return dht_mutable_item_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_mutable_item_alert dht_mutable_item_alertVar) {
        if (dht_mutable_item_alertVar == null) {
            return 0L;
        }
        if (!dht_mutable_item_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_mutable_item_alertVar.swigCPtr;
        dht_mutable_item_alertVar.swigCMemOwn = false;
        dht_mutable_item_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_mutable_item_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_mutable_item_alert(j);
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

    public boolean getAuthoritative() {
        return libtorrent_jni.dht_mutable_item_alert_authoritative_get(this.swigCPtr, this);
    }

    public entry getItem() {
        long jDht_mutable_item_alert_item_get = libtorrent_jni.dht_mutable_item_alert_item_get(this.swigCPtr, this);
        if (jDht_mutable_item_alert_item_get == 0) {
            return null;
        }
        return new entry(jDht_mutable_item_alert_item_get, false);
    }

    public String getSalt() {
        return libtorrent_jni.dht_mutable_item_alert_salt_get(this.swigCPtr, this);
    }

    public long getSeq() {
        return libtorrent_jni.dht_mutable_item_alert_seq_get(this.swigCPtr, this);
    }

    public byte_array_32 get_key() {
        return new byte_array_32(libtorrent_jni.dht_mutable_item_alert_get_key(this.swigCPtr, this), true);
    }

    public byte_vector get_salt() {
        return new byte_vector(libtorrent_jni.dht_mutable_item_alert_get_salt(this.swigCPtr, this), true);
    }

    public long get_seq() {
        return libtorrent_jni.dht_mutable_item_alert_get_seq(this.swigCPtr, this);
    }

    public byte_array_64 get_signature() {
        return new byte_array_64(libtorrent_jni.dht_mutable_item_alert_get_signature(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_mutable_item_alert_message(this.swigCPtr, this);
    }

    public void setAuthoritative(boolean z) {
        libtorrent_jni.dht_mutable_item_alert_authoritative_set(this.swigCPtr, this, z);
    }

    public void setItem(entry entryVar) {
        libtorrent_jni.dht_mutable_item_alert_item_set(this.swigCPtr, this, entry.getCPtr(entryVar), entryVar);
    }

    public void setSalt(String str) {
        libtorrent_jni.dht_mutable_item_alert_salt_set(this.swigCPtr, this, str);
    }

    public void setSeq(long j) {
        libtorrent_jni.dht_mutable_item_alert_seq_set(this.swigCPtr, this, j);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_mutable_item_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_mutable_item_alert_what(this.swigCPtr, this);
    }
}
