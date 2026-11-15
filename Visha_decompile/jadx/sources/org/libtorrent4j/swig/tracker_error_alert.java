package org.libtorrent4j.swig;

public class tracker_error_alert extends tracker_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.tracker_error_alert_priority_get());
    public static final int alert_type = libtorrent_jni.tracker_error_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.tracker_error_alert_static_category_get(), false);

    public tracker_error_alert(long j, boolean z) {
        super(libtorrent_jni.tracker_error_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(tracker_error_alert tracker_error_alertVar) {
        if (tracker_error_alertVar == null) {
            return 0L;
        }
        return tracker_error_alertVar.swigCPtr;
    }

    public static long swigRelease(tracker_error_alert tracker_error_alertVar) {
        if (tracker_error_alertVar == null) {
            return 0L;
        }
        if (!tracker_error_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tracker_error_alertVar.swigCPtr;
        tracker_error_alertVar.swigCMemOwn = false;
        tracker_error_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.tracker_error_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tracker_error_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    public String error_message() {
        return libtorrent_jni.tracker_error_alert_error_message(this.swigCPtr, this);
    }

    public String failure_reason() {
        return libtorrent_jni.tracker_error_alert_failure_reason(this.swigCPtr, this);
    }

    @Override
    public void finalize() {
        delete();
    }

    public error_code getError() {
        long jTracker_error_alert_error_get = libtorrent_jni.tracker_error_alert_error_get(this.swigCPtr, this);
        if (jTracker_error_alert_error_get == 0) {
            return null;
        }
        return new error_code(jTracker_error_alert_error_get, false);
    }

    public operation_t getOp() {
        return operation_t.swigToEnum(libtorrent_jni.tracker_error_alert_op_get(this.swigCPtr, this));
    }

    public int getTimes_in_row() {
        return libtorrent_jni.tracker_error_alert_times_in_row_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.tracker_error_alert_message(this.swigCPtr, this);
    }

    public void setOp(operation_t operation_tVar) {
        libtorrent_jni.tracker_error_alert_op_set(this.swigCPtr, this, operation_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.tracker_error_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.tracker_error_alert_what(this.swigCPtr, this);
    }
}
