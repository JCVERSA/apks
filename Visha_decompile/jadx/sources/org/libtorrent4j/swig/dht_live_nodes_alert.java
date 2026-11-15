package org.libtorrent4j.swig;

public class dht_live_nodes_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_live_nodes_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_live_nodes_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_live_nodes_alert_static_category_get(), false);

    public dht_live_nodes_alert(long j, boolean z) {
        super(libtorrent_jni.dht_live_nodes_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_live_nodes_alert dht_live_nodes_alertVar) {
        if (dht_live_nodes_alertVar == null) {
            return 0L;
        }
        return dht_live_nodes_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_live_nodes_alert dht_live_nodes_alertVar) {
        if (dht_live_nodes_alertVar == null) {
            return 0L;
        }
        if (!dht_live_nodes_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_live_nodes_alertVar.swigCPtr;
        dht_live_nodes_alertVar.swigCMemOwn = false;
        dht_live_nodes_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_live_nodes_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_live_nodes_alert(j);
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

    public sha1_hash getNode_id() {
        long jDht_live_nodes_alert_node_id_get = libtorrent_jni.dht_live_nodes_alert_node_id_get(this.swigCPtr, this);
        if (jDht_live_nodes_alert_node_id_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_live_nodes_alert_node_id_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_live_nodes_alert_message(this.swigCPtr, this);
    }

    public sha1_hash_udp_endpoint_pair_vector nodes() {
        return new sha1_hash_udp_endpoint_pair_vector(libtorrent_jni.dht_live_nodes_alert_nodes(this.swigCPtr, this), true);
    }

    public int num_nodes() {
        return libtorrent_jni.dht_live_nodes_alert_num_nodes(this.swigCPtr, this);
    }

    public void setNode_id(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_live_nodes_alert_node_id_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_live_nodes_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_live_nodes_alert_what(this.swigCPtr, this);
    }
}
