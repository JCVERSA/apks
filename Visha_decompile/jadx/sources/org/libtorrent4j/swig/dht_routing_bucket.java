package org.libtorrent4j.swig;

public class dht_routing_bucket {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public dht_routing_bucket(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_routing_bucket dht_routing_bucketVar) {
        if (dht_routing_bucketVar == null) {
            return 0L;
        }
        return dht_routing_bucketVar.swigCPtr;
    }

    public static long swigRelease(dht_routing_bucket dht_routing_bucketVar) {
        if (dht_routing_bucketVar == null) {
            return 0L;
        }
        if (!dht_routing_bucketVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_routing_bucketVar.swigCPtr;
        dht_routing_bucketVar.swigCMemOwn = false;
        dht_routing_bucketVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_routing_bucket(j);
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

    public int getLast_active() {
        return libtorrent_jni.dht_routing_bucket_last_active_get(this.swigCPtr, this);
    }

    public int getNum_nodes() {
        return libtorrent_jni.dht_routing_bucket_num_nodes_get(this.swigCPtr, this);
    }

    public int getNum_replacements() {
        return libtorrent_jni.dht_routing_bucket_num_replacements_get(this.swigCPtr, this);
    }

    public void setLast_active(int i) {
        libtorrent_jni.dht_routing_bucket_last_active_set(this.swigCPtr, this, i);
    }

    public void setNum_nodes(int i) {
        libtorrent_jni.dht_routing_bucket_num_nodes_set(this.swigCPtr, this, i);
    }

    public void setNum_replacements(int i) {
        libtorrent_jni.dht_routing_bucket_num_replacements_set(this.swigCPtr, this, i);
    }

    public dht_routing_bucket() {
        this(libtorrent_jni.new_dht_routing_bucket(), true);
    }
}
