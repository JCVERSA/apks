package org.libtorrent4j.swig;

public class connection_type_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public connection_type_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static connection_type_t all() {
        return new connection_type_t(libtorrent_jni.connection_type_t_all(), true);
    }

    public static connection_type_t from_int(int i) {
        return new connection_type_t(libtorrent_jni.connection_type_t_from_int(i), true);
    }

    public static long getCPtr(connection_type_t connection_type_tVar) {
        if (connection_type_tVar == null) {
            return 0L;
        }
        return connection_type_tVar.swigCPtr;
    }

    public static long swigRelease(connection_type_t connection_type_tVar) {
        if (connection_type_tVar == null) {
            return 0L;
        }
        if (!connection_type_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = connection_type_tVar.swigCPtr;
        connection_type_tVar.swigCMemOwn = false;
        connection_type_tVar.delete();
        return j;
    }

    public connection_type_t and_(connection_type_t connection_type_tVar) {
        return new connection_type_t(libtorrent_jni.connection_type_t_and_(this.swigCPtr, this, getCPtr(connection_type_tVar), connection_type_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_connection_type_t(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(connection_type_t connection_type_tVar) {
        return libtorrent_jni.connection_type_t_eq(this.swigCPtr, this, getCPtr(connection_type_tVar), connection_type_tVar);
    }

    public void finalize() {
        delete();
    }

    public connection_type_t inv() {
        return new connection_type_t(libtorrent_jni.connection_type_t_inv(this.swigCPtr, this), true);
    }

    public boolean ne(connection_type_t connection_type_tVar) {
        return libtorrent_jni.connection_type_t_ne(this.swigCPtr, this, getCPtr(connection_type_tVar), connection_type_tVar);
    }

    public boolean non_zero() {
        return libtorrent_jni.connection_type_t_non_zero(this.swigCPtr, this);
    }

    public connection_type_t or_(connection_type_t connection_type_tVar) {
        return new connection_type_t(libtorrent_jni.connection_type_t_or_(this.swigCPtr, this, getCPtr(connection_type_tVar), connection_type_tVar), true);
    }

    public int to_int() {
        return libtorrent_jni.connection_type_t_to_int(this.swigCPtr, this);
    }

    public connection_type_t xor_(connection_type_t connection_type_tVar) {
        return new connection_type_t(libtorrent_jni.connection_type_t_xor_(this.swigCPtr, this, getCPtr(connection_type_tVar), connection_type_tVar), true);
    }

    public connection_type_t() {
        this(libtorrent_jni.new_connection_type_t(), true);
    }
}
