package org.libtorrent4j.swig;

public class tcp_endpoint {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public tcp_endpoint(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(tcp_endpoint tcp_endpointVar) {
        if (tcp_endpointVar == null) {
            return 0L;
        }
        return tcp_endpointVar.swigCPtr;
    }

    public static long swigRelease(tcp_endpoint tcp_endpointVar) {
        if (tcp_endpointVar == null) {
            return 0L;
        }
        if (!tcp_endpointVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tcp_endpointVar.swigCPtr;
        tcp_endpointVar.swigCMemOwn = false;
        tcp_endpointVar.delete();
        return j;
    }

    public address address() {
        return new address(libtorrent_jni.tcp_endpoint_address(this.swigCPtr, this), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tcp_endpoint(j);
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
        return libtorrent_jni.tcp_endpoint_port(this.swigCPtr, this);
    }

    public tcp_endpoint() {
        this(libtorrent_jni.new_tcp_endpoint__SWIG_0(), true);
    }

    public tcp_endpoint(address addressVar, int i) {
        this(libtorrent_jni.new_tcp_endpoint__SWIG_1(address.getCPtr(addressVar), addressVar, i), true);
    }

    public tcp_endpoint(tcp_endpoint tcp_endpointVar) {
        this(libtorrent_jni.new_tcp_endpoint__SWIG_2(getCPtr(tcp_endpointVar), tcp_endpointVar), true);
    }
}
