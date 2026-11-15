package org.libtorrent4j.swig;

public class dht_put_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_put_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_put_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_put_alert_static_category_get(), false);

    public dht_put_alert(long j, boolean z) {
        super(libtorrent_jni.dht_put_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_put_alert dht_put_alertVar) {
        if (dht_put_alertVar == null) {
            return 0L;
        }
        return dht_put_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_put_alert dht_put_alertVar) {
        if (dht_put_alertVar == null) {
            return 0L;
        }
        if (!dht_put_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_put_alertVar.swigCPtr;
        dht_put_alertVar.swigCMemOwn = false;
        dht_put_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_put_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_put_alert(j);
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

    public int getNum_success() {
        return libtorrent_jni.dht_put_alert_num_success_get(this.swigCPtr, this);
    }

    public String getSalt() {
        return libtorrent_jni.dht_put_alert_salt_get(this.swigCPtr, this);
    }

    public long getSeq() {
        return libtorrent_jni.dht_put_alert_seq_get(this.swigCPtr, this);
    }

    public sha1_hash getTarget() {
        long jDht_put_alert_target_get = libtorrent_jni.dht_put_alert_target_get(this.swigCPtr, this);
        if (jDht_put_alert_target_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_put_alert_target_get, false);
    }

    public byte_array_32 get_public_key() {
        return new byte_array_32(libtorrent_jni.dht_put_alert_get_public_key(this.swigCPtr, this), true);
    }

    public byte_vector get_salt() {
        return new byte_vector(libtorrent_jni.dht_put_alert_get_salt(this.swigCPtr, this), true);
    }

    public long get_seq() {
        return libtorrent_jni.dht_put_alert_get_seq(this.swigCPtr, this);
    }

    public byte_array_64 get_signature() {
        return new byte_array_64(libtorrent_jni.dht_put_alert_get_signature(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_put_alert_message(this.swigCPtr, this);
    }

    public void setNum_success(int i) {
        libtorrent_jni.dht_put_alert_num_success_set(this.swigCPtr, this, i);
    }

    public void setSalt(String str) {
        libtorrent_jni.dht_put_alert_salt_set(this.swigCPtr, this, str);
    }

    public void setSeq(long j) {
        libtorrent_jni.dht_put_alert_seq_set(this.swigCPtr, this, j);
    }

    public void setTarget(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_put_alert_target_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_put_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_put_alert_what(this.swigCPtr, this);
    }
}
