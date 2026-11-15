package org.libtorrent4j.swig;

public class tracker_reply_alert extends tracker_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.tracker_reply_alert_priority_get());
    public static final int alert_type = libtorrent_jni.tracker_reply_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.tracker_reply_alert_static_category_get(), false);

    public tracker_reply_alert(long j, boolean z) {
        super(libtorrent_jni.tracker_reply_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(tracker_reply_alert tracker_reply_alertVar) {
        if (tracker_reply_alertVar == null) {
            return 0L;
        }
        return tracker_reply_alertVar.swigCPtr;
    }

    public static long swigRelease(tracker_reply_alert tracker_reply_alertVar) {
        if (tracker_reply_alertVar == null) {
            return 0L;
        }
        if (!tracker_reply_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tracker_reply_alertVar.swigCPtr;
        tracker_reply_alertVar.swigCMemOwn = false;
        tracker_reply_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.tracker_reply_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tracker_reply_alert(j);
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

    public int getNum_peers() {
        return libtorrent_jni.tracker_reply_alert_num_peers_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.tracker_reply_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.tracker_reply_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.tracker_reply_alert_what(this.swigCPtr, this);
    }
}
