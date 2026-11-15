package org.libtorrent4j.swig;

public class announce_endpoint {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public announce_endpoint(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(announce_endpoint announce_endpointVar) {
        if (announce_endpointVar == null) {
            return 0L;
        }
        return announce_endpointVar.swigCPtr;
    }

    public static long swigRelease(announce_endpoint announce_endpointVar) {
        if (announce_endpointVar == null) {
            return 0L;
        }
        if (!announce_endpointVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = announce_endpointVar.swigCPtr;
        announce_endpointVar.swigCMemOwn = false;
        announce_endpointVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_announce_endpoint(j);
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

    public boolean getEnabled() {
        return libtorrent_jni.announce_endpoint_enabled_get(this.swigCPtr, this);
    }

    public tcp_endpoint getLocal_endpoint() {
        long jAnnounce_endpoint_local_endpoint_get = libtorrent_jni.announce_endpoint_local_endpoint_get(this.swigCPtr, this);
        if (jAnnounce_endpoint_local_endpoint_get == 0) {
            return null;
        }
        return new tcp_endpoint(jAnnounce_endpoint_local_endpoint_get, false);
    }

    public announce_infohash get_infohash_v1() {
        return new announce_infohash(libtorrent_jni.announce_endpoint_get_infohash_v1(this.swigCPtr, this), true);
    }

    public announce_infohash get_infohash_v2() {
        return new announce_infohash(libtorrent_jni.announce_endpoint_get_infohash_v2(this.swigCPtr, this), true);
    }

    public void setEnabled(boolean z) {
        libtorrent_jni.announce_endpoint_enabled_set(this.swigCPtr, this, z);
    }

    public void setLocal_endpoint(tcp_endpoint tcp_endpointVar) {
        libtorrent_jni.announce_endpoint_local_endpoint_set(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar);
    }

    public announce_endpoint() {
        this(libtorrent_jni.new_announce_endpoint(), true);
    }
}
