package org.libtorrent4j.swig;

public class fastresume_rejected_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.fastresume_rejected_alert_priority_get());
    public static final int alert_type = libtorrent_jni.fastresume_rejected_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.fastresume_rejected_alert_static_category_get(), false);

    public fastresume_rejected_alert(long j, boolean z) {
        super(libtorrent_jni.fastresume_rejected_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(fastresume_rejected_alert fastresume_rejected_alertVar) {
        if (fastresume_rejected_alertVar == null) {
            return 0L;
        }
        return fastresume_rejected_alertVar.swigCPtr;
    }

    public static long swigRelease(fastresume_rejected_alert fastresume_rejected_alertVar) {
        if (fastresume_rejected_alertVar == null) {
            return 0L;
        }
        if (!fastresume_rejected_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = fastresume_rejected_alertVar.swigCPtr;
        fastresume_rejected_alertVar.swigCMemOwn = false;
        fastresume_rejected_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.fastresume_rejected_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_fastresume_rejected_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    public String file_path() {
        return libtorrent_jni.fastresume_rejected_alert_file_path(this.swigCPtr, this);
    }

    @Override
    public void finalize() {
        delete();
    }

    public error_code getError() {
        long jFastresume_rejected_alert_error_get = libtorrent_jni.fastresume_rejected_alert_error_get(this.swigCPtr, this);
        if (jFastresume_rejected_alert_error_get == 0) {
            return null;
        }
        return new error_code(jFastresume_rejected_alert_error_get, false);
    }

    public operation_t getOp() {
        return operation_t.swigToEnum(libtorrent_jni.fastresume_rejected_alert_op_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.fastresume_rejected_alert_message(this.swigCPtr, this);
    }

    public void setError(error_code error_codeVar) {
        libtorrent_jni.fastresume_rejected_alert_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public void setOp(operation_t operation_tVar) {
        libtorrent_jni.fastresume_rejected_alert_op_set(this.swigCPtr, this, operation_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.fastresume_rejected_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.fastresume_rejected_alert_what(this.swigCPtr, this);
    }
}
