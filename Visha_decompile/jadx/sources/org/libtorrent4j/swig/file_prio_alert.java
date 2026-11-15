package org.libtorrent4j.swig;

public class file_prio_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.file_prio_alert_priority_get());
    public static final int alert_type = libtorrent_jni.file_prio_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.file_prio_alert_static_category_get(), false);

    public file_prio_alert(long j, boolean z) {
        super(libtorrent_jni.file_prio_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(file_prio_alert file_prio_alertVar) {
        if (file_prio_alertVar == null) {
            return 0L;
        }
        return file_prio_alertVar.swigCPtr;
    }

    public static long swigRelease(file_prio_alert file_prio_alertVar) {
        if (file_prio_alertVar == null) {
            return 0L;
        }
        if (!file_prio_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_prio_alertVar.swigCPtr;
        file_prio_alertVar.swigCMemOwn = false;
        file_prio_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.file_prio_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_prio_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void finalize() {
        delete();
    }

    public error_code getError() {
        long jFile_prio_alert_error_get = libtorrent_jni.file_prio_alert_error_get(this.swigCPtr, this);
        if (jFile_prio_alert_error_get == 0) {
            return null;
        }
        return new error_code(jFile_prio_alert_error_get, false);
    }

    public operation_t getOp() {
        return operation_t.swigToEnum(libtorrent_jni.file_prio_alert_op_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.file_prio_alert_message(this.swigCPtr, this);
    }

    public void setError(error_code error_codeVar) {
        libtorrent_jni.file_prio_alert_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public void setOp(operation_t operation_tVar) {
        libtorrent_jni.file_prio_alert_op_set(this.swigCPtr, this, operation_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.file_prio_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.file_prio_alert_what(this.swigCPtr, this);
    }
}
