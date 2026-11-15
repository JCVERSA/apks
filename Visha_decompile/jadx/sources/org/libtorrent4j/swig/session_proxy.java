package org.libtorrent4j.swig;

public class session_proxy {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public session_proxy(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(session_proxy session_proxyVar) {
        if (session_proxyVar == null) {
            return 0L;
        }
        return session_proxyVar.swigCPtr;
    }

    public static long swigRelease(session_proxy session_proxyVar) {
        if (session_proxyVar == null) {
            return 0L;
        }
        if (!session_proxyVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = session_proxyVar.swigCPtr;
        session_proxyVar.swigCMemOwn = false;
        session_proxyVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session_proxy(j);
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

    public session_proxy() {
        this(libtorrent_jni.new_session_proxy__SWIG_0(), true);
    }

    public session_proxy(session_proxy session_proxyVar) {
        this(libtorrent_jni.new_session_proxy__SWIG_1(getCPtr(session_proxyVar), session_proxyVar), true);
    }
}
