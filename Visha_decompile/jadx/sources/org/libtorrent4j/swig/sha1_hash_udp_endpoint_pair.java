package org.libtorrent4j.swig;

public class sha1_hash_udp_endpoint_pair {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public sha1_hash_udp_endpoint_pair(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(sha1_hash_udp_endpoint_pair sha1_hash_udp_endpoint_pairVar) {
        if (sha1_hash_udp_endpoint_pairVar == null) {
            return 0L;
        }
        return sha1_hash_udp_endpoint_pairVar.swigCPtr;
    }

    public static long swigRelease(sha1_hash_udp_endpoint_pair sha1_hash_udp_endpoint_pairVar) {
        if (sha1_hash_udp_endpoint_pairVar == null) {
            return 0L;
        }
        if (!sha1_hash_udp_endpoint_pairVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sha1_hash_udp_endpoint_pairVar.swigCPtr;
        sha1_hash_udp_endpoint_pairVar.swigCMemOwn = false;
        sha1_hash_udp_endpoint_pairVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_sha1_hash_udp_endpoint_pair(j);
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

    public sha1_hash getFirst() {
        long jSha1_hash_udp_endpoint_pair_first_get = libtorrent_jni.sha1_hash_udp_endpoint_pair_first_get(this.swigCPtr, this);
        if (jSha1_hash_udp_endpoint_pair_first_get == 0) {
            return null;
        }
        return new sha1_hash(jSha1_hash_udp_endpoint_pair_first_get, false);
    }

    public udp_endpoint getSecond() {
        long jSha1_hash_udp_endpoint_pair_second_get = libtorrent_jni.sha1_hash_udp_endpoint_pair_second_get(this.swigCPtr, this);
        if (jSha1_hash_udp_endpoint_pair_second_get == 0) {
            return null;
        }
        return new udp_endpoint(jSha1_hash_udp_endpoint_pair_second_get, false);
    }

    public void setFirst(sha1_hash sha1_hashVar) {
        libtorrent_jni.sha1_hash_udp_endpoint_pair_first_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setSecond(udp_endpoint udp_endpointVar) {
        libtorrent_jni.sha1_hash_udp_endpoint_pair_second_set(this.swigCPtr, this, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar);
    }

    public sha1_hash_udp_endpoint_pair() {
        this(libtorrent_jni.new_sha1_hash_udp_endpoint_pair__SWIG_0(), true);
    }

    public sha1_hash_udp_endpoint_pair(sha1_hash sha1_hashVar, udp_endpoint udp_endpointVar) {
        this(libtorrent_jni.new_sha1_hash_udp_endpoint_pair__SWIG_1(sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar), true);
    }

    public sha1_hash_udp_endpoint_pair(sha1_hash_udp_endpoint_pair sha1_hash_udp_endpoint_pairVar) {
        this(libtorrent_jni.new_sha1_hash_udp_endpoint_pair__SWIG_2(getCPtr(sha1_hash_udp_endpoint_pairVar), sha1_hash_udp_endpoint_pairVar), true);
    }
}
