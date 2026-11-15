package org.libtorrent4j.swig;

public class dht_state {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public dht_state(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_state dht_stateVar) {
        if (dht_stateVar == null) {
            return 0L;
        }
        return dht_stateVar.swigCPtr;
    }

    public static long swigRelease(dht_state dht_stateVar) {
        if (dht_stateVar == null) {
            return 0L;
        }
        if (!dht_stateVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_stateVar.swigCPtr;
        dht_stateVar.swigCMemOwn = false;
        dht_stateVar.delete();
        return j;
    }

    public void clear() {
        libtorrent_jni.dht_state_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_state(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public address_sha1_hash_pair_vector getNids() {
        long jDht_state_nids_get = libtorrent_jni.dht_state_nids_get(this.swigCPtr, this);
        if (jDht_state_nids_get == 0) {
            return null;
        }
        return new address_sha1_hash_pair_vector(jDht_state_nids_get, false);
    }

    public udp_endpoint_vector getNodes() {
        long jDht_state_nodes_get = libtorrent_jni.dht_state_nodes_get(this.swigCPtr, this);
        if (jDht_state_nodes_get == 0) {
            return null;
        }
        return new udp_endpoint_vector(jDht_state_nodes_get, false);
    }

    public udp_endpoint_vector getNodes6() {
        long jDht_state_nodes6_get = libtorrent_jni.dht_state_nodes6_get(this.swigCPtr, this);
        if (jDht_state_nodes6_get == 0) {
            return null;
        }
        return new udp_endpoint_vector(jDht_state_nodes6_get, false);
    }

    public void setNids(address_sha1_hash_pair_vector address_sha1_hash_pair_vectorVar) {
        libtorrent_jni.dht_state_nids_set(this.swigCPtr, this, address_sha1_hash_pair_vector.getCPtr(address_sha1_hash_pair_vectorVar), address_sha1_hash_pair_vectorVar);
    }

    public void setNodes(udp_endpoint_vector udp_endpoint_vectorVar) {
        libtorrent_jni.dht_state_nodes_set(this.swigCPtr, this, udp_endpoint_vector.getCPtr(udp_endpoint_vectorVar), udp_endpoint_vectorVar);
    }

    public void setNodes6(udp_endpoint_vector udp_endpoint_vectorVar) {
        libtorrent_jni.dht_state_nodes6_set(this.swigCPtr, this, udp_endpoint_vector.getCPtr(udp_endpoint_vectorVar), udp_endpoint_vectorVar);
    }

    public dht_state() {
        this(libtorrent_jni.new_dht_state(), true);
    }
}
