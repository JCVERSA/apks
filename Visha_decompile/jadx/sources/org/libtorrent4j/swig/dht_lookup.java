package org.libtorrent4j.swig;

public class dht_lookup {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public dht_lookup(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_lookup dht_lookupVar) {
        if (dht_lookupVar == null) {
            return 0L;
        }
        return dht_lookupVar.swigCPtr;
    }

    public static long swigRelease(dht_lookup dht_lookupVar) {
        if (dht_lookupVar == null) {
            return 0L;
        }
        if (!dht_lookupVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_lookupVar.swigCPtr;
        dht_lookupVar.swigCMemOwn = false;
        dht_lookupVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_lookup(j);
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

    public int getBranch_factor() {
        return libtorrent_jni.dht_lookup_branch_factor_get(this.swigCPtr, this);
    }

    public int getFirst_timeout() {
        return libtorrent_jni.dht_lookup_first_timeout_get(this.swigCPtr, this);
    }

    public int getLast_sent() {
        return libtorrent_jni.dht_lookup_last_sent_get(this.swigCPtr, this);
    }

    public int getNodes_left() {
        return libtorrent_jni.dht_lookup_nodes_left_get(this.swigCPtr, this);
    }

    public int getOutstanding_requests() {
        return libtorrent_jni.dht_lookup_outstanding_requests_get(this.swigCPtr, this);
    }

    public int getResponses() {
        return libtorrent_jni.dht_lookup_responses_get(this.swigCPtr, this);
    }

    public sha1_hash getTarget() {
        long jDht_lookup_target_get = libtorrent_jni.dht_lookup_target_get(this.swigCPtr, this);
        if (jDht_lookup_target_get == 0) {
            return null;
        }
        return new sha1_hash(jDht_lookup_target_get, false);
    }

    public int getTimeouts() {
        return libtorrent_jni.dht_lookup_timeouts_get(this.swigCPtr, this);
    }

    public String get_type() {
        return libtorrent_jni.dht_lookup_get_type(this.swigCPtr, this);
    }

    public void setBranch_factor(int i) {
        libtorrent_jni.dht_lookup_branch_factor_set(this.swigCPtr, this, i);
    }

    public void setFirst_timeout(int i) {
        libtorrent_jni.dht_lookup_first_timeout_set(this.swigCPtr, this, i);
    }

    public void setLast_sent(int i) {
        libtorrent_jni.dht_lookup_last_sent_set(this.swigCPtr, this, i);
    }

    public void setNodes_left(int i) {
        libtorrent_jni.dht_lookup_nodes_left_set(this.swigCPtr, this, i);
    }

    public void setOutstanding_requests(int i) {
        libtorrent_jni.dht_lookup_outstanding_requests_set(this.swigCPtr, this, i);
    }

    public void setResponses(int i) {
        libtorrent_jni.dht_lookup_responses_set(this.swigCPtr, this, i);
    }

    public void setTarget(sha1_hash sha1_hashVar) {
        libtorrent_jni.dht_lookup_target_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setTimeouts(int i) {
        libtorrent_jni.dht_lookup_timeouts_set(this.swigCPtr, this, i);
    }

    public dht_lookup() {
        this(libtorrent_jni.new_dht_lookup(), true);
    }
}
