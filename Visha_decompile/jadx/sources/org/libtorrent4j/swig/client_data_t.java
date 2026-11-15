package org.libtorrent4j.swig;

public class client_data_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public client_data_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(client_data_t client_data_tVar) {
        if (client_data_tVar == null) {
            return 0L;
        }
        return client_data_tVar.swigCPtr;
    }

    public static long swigRelease(client_data_t client_data_tVar) {
        if (client_data_tVar == null) {
            return 0L;
        }
        if (!client_data_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = client_data_tVar.swigCPtr;
        client_data_tVar.swigCMemOwn = false;
        client_data_tVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_client_data_t(j);
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

    public long get() {
        return libtorrent_jni.client_data_t_get(this.swigCPtr, this);
    }

    public client_data_t() {
        this(libtorrent_jni.new_client_data_t__SWIG_0(), true);
    }

    public client_data_t(long j) {
        this(libtorrent_jni.new_client_data_t__SWIG_1(j), true);
    }
}
