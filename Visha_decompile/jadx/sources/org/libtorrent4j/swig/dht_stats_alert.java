package org.libtorrent4j.swig;

public class dht_stats_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_stats_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_stats_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_stats_alert_static_category_get(), false);

    public dht_stats_alert(long j, boolean z) {
        super(libtorrent_jni.dht_stats_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_stats_alert dht_stats_alertVar) {
        if (dht_stats_alertVar == null) {
            return 0L;
        }
        return dht_stats_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_stats_alert dht_stats_alertVar) {
        if (dht_stats_alertVar == null) {
            return 0L;
        }
        if (!dht_stats_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_stats_alertVar.swigCPtr;
        dht_stats_alertVar.swigCMemOwn = false;
        dht_stats_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_stats_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_stats_alert(j);
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

    public dht_lookup_vector getActive_requests() {
        long jDht_stats_alert_active_requests_get = libtorrent_jni.dht_stats_alert_active_requests_get(this.swigCPtr, this);
        if (jDht_stats_alert_active_requests_get == 0) {
            return null;
        }
        return new dht_lookup_vector(jDht_stats_alert_active_requests_get, false);
    }

    public sha1_hash getNid() {
        long jDht_stats_alert_nid_get = libtorrent_jni.dht_stats_alert_nid_get(this.swigCPtr, this);
        if (jDht_stats_alert_nid_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_stats_alert_nid_get, false);
    }

    public dht_routing_bucket_vector getRouting_table() {
        long jDht_stats_alert_routing_table_get = libtorrent_jni.dht_stats_alert_routing_table_get(this.swigCPtr, this);
        if (jDht_stats_alert_routing_table_get == 0) {
            return null;
        }
        return new dht_routing_bucket_vector(jDht_stats_alert_routing_table_get, false);
    }

    public udp_endpoint get_local_endpoint() {
        return new udp_endpoint(libtorrent_jni.dht_stats_alert_get_local_endpoint(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_stats_alert_message(this.swigCPtr, this);
    }

    public void setActive_requests(dht_lookup_vector dht_lookup_vectorVar) {
        libtorrent_jni.dht_stats_alert_active_requests_set(this.swigCPtr, this, dht_lookup_vector.getCPtr(dht_lookup_vectorVar), dht_lookup_vectorVar);
    }

    public void setNid(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_stats_alert_nid_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setRouting_table(dht_routing_bucket_vector dht_routing_bucket_vectorVar) {
        libtorrent_jni.dht_stats_alert_routing_table_set(this.swigCPtr, this, dht_routing_bucket_vector.getCPtr(dht_routing_bucket_vectorVar), dht_routing_bucket_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_stats_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_stats_alert_what(this.swigCPtr, this);
    }
}
