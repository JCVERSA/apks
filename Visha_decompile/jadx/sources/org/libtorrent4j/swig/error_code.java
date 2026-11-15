package org.libtorrent4j.swig;

public class error_code {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public error_code(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(error_code error_codeVar) {
        if (error_codeVar == null) {
            return 0L;
        }
        return error_codeVar.swigCPtr;
    }

    public static long swigRelease(error_code error_codeVar) {
        if (error_codeVar == null) {
            return 0L;
        }
        if (!error_codeVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = error_codeVar.swigCPtr;
        error_codeVar.swigCMemOwn = false;
        error_codeVar.delete();
        return j;
    }

    public void clear() {
        libtorrent_jni.error_code_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_error_code(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean failed() {
        return libtorrent_jni.error_code_failed(this.swigCPtr, this);
    }

    public void finalize() {
        delete();
    }

    public String message() {
        return libtorrent_jni.error_code_message(this.swigCPtr, this);
    }

    public boolean to_bool() {
        return libtorrent_jni.error_code_to_bool(this.swigCPtr, this);
    }

    public int value() {
        return libtorrent_jni.error_code_value(this.swigCPtr, this);
    }

    public error_code() {
        this(libtorrent_jni.new_error_code(), true);
    }
}
