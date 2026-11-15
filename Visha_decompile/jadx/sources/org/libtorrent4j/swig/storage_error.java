package org.libtorrent4j.swig;

public class storage_error {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public storage_error(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(storage_error storage_errorVar) {
        if (storage_errorVar == null) {
            return 0L;
        }
        return storage_errorVar.swigCPtr;
    }

    public static long swigRelease(storage_error storage_errorVar) {
        if (storage_errorVar == null) {
            return 0L;
        }
        if (!storage_errorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = storage_errorVar.swigCPtr;
        storage_errorVar.swigCMemOwn = false;
        storage_errorVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_storage_error(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int file() {
        return libtorrent_jni.storage_error_file__SWIG_0(this.swigCPtr, this);
    }

    public void finalize() {
        delete();
    }

    public error_code getEc() {
        long jStorage_error_ec_get = libtorrent_jni.storage_error_ec_get(this.swigCPtr, this);
        if (jStorage_error_ec_get == 0) {
            return null;
        }
        return new error_code(jStorage_error_ec_get, false);
    }

    public operation_t getOperation() {
        return operation_t.swigToEnum(libtorrent_jni.storage_error_operation_get(this.swigCPtr, this));
    }

    public void setEc(error_code error_codeVar) {
        libtorrent_jni.storage_error_ec_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public void setOperation(operation_t operation_tVar) {
        libtorrent_jni.storage_error_operation_set(this.swigCPtr, this, operation_tVar.swigValue());
    }

    public boolean to_bool() {
        return libtorrent_jni.storage_error_to_bool(this.swigCPtr, this);
    }

    public void file(int i) {
        libtorrent_jni.storage_error_file__SWIG_1(this.swigCPtr, this, i);
    }

    public storage_error() {
        this(libtorrent_jni.new_storage_error__SWIG_0(), true);
    }

    public storage_error(error_code error_codeVar) {
        this(libtorrent_jni.new_storage_error__SWIG_1(error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public storage_error(error_code error_codeVar, operation_t operation_tVar) {
        this(libtorrent_jni.new_storage_error__SWIG_2(error_code.getCPtr(error_codeVar), error_codeVar, operation_tVar.swigValue()), true);
    }

    public storage_error(error_code error_codeVar, int i, operation_t operation_tVar) {
        this(libtorrent_jni.new_storage_error__SWIG_3(error_code.getCPtr(error_codeVar), error_codeVar, i, operation_tVar.swigValue()), true);
    }
}
