package org.libtorrent4j.swig;

public class tracker_warning_alert extends tracker_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.tracker_warning_alert_priority_get());
    public static final int alert_type = libtorrent_jni.tracker_warning_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.tracker_warning_alert_static_category_get(), false);

    public tracker_warning_alert(long j, boolean z) {
        super(libtorrent_jni.tracker_warning_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(tracker_warning_alert tracker_warning_alertVar) {
        if (tracker_warning_alertVar == null) {
            return 0L;
        }
        return tracker_warning_alertVar.swigCPtr;
    }

    public static long swigRelease(tracker_warning_alert tracker_warning_alertVar) {
        if (tracker_warning_alertVar == null) {
            return 0L;
        }
        if (!tracker_warning_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tracker_warning_alertVar.swigCPtr;
        tracker_warning_alertVar.swigCMemOwn = false;
        tracker_warning_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.tracker_warning_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tracker_warning_alert(j);
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

    @Override
    public String message() {
        return libtorrent_jni.tracker_warning_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.tracker_warning_alert_type(this.swigCPtr, this);
    }

    public String warning_message() {
        return libtorrent_jni.tracker_warning_alert_warning_message(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.tracker_warning_alert_what(this.swigCPtr, this);
    }
}
