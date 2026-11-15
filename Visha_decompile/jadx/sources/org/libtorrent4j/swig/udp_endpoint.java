package org.libtorrent4j.swig;

public class udp_endpoint {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public udp_endpoint(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(udp_endpoint udp_endpointVar) {
        if (udp_endpointVar == null) {
            return 0L;
        }
        return udp_endpointVar.swigCPtr;
    }

    public static long swigRelease(udp_endpoint udp_endpointVar) {
        if (udp_endpointVar == null) {
            return 0L;
        }
        if (!udp_endpointVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = udp_endpointVar.swigCPtr;
        udp_endpointVar.swigCMemOwn = false;
        udp_endpointVar.delete();
        return j;
    }

    public address address() {
        return new address(libtorrent_jni.udp_endpoint_address(this.swigCPtr, this), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_udp_endpoint(j);
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

    public int port() {
        return libtorrent_jni.udp_endpoint_port(this.swigCPtr, this);
    }

    public udp_endpoint() {
        this(libtorrent_jni.new_udp_endpoint__SWIG_0(), true);
    }

    public udp_endpoint(address addressVar, int i) {
        this(libtorrent_jni.new_udp_endpoint__SWIG_1(address.getCPtr(addressVar), addressVar, i), true);
    }

    public udp_endpoint(udp_endpoint udp_endpointVar) {
        this(libtorrent_jni.new_udp_endpoint__SWIG_2(getCPtr(udp_endpointVar), udp_endpointVar), true);
    }
}
