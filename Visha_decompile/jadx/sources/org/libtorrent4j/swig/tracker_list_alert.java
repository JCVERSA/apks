package org.libtorrent4j.swig;

public class tracker_list_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.tracker_list_alert_priority_get());
    public static final int alert_type = libtorrent_jni.tracker_list_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.tracker_list_alert_static_category_get(), false);

    public tracker_list_alert(long j, boolean z) {
        super(libtorrent_jni.tracker_list_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(tracker_list_alert tracker_list_alertVar) {
        if (tracker_list_alertVar == null) {
            return 0L;
        }
        return tracker_list_alertVar.swigCPtr;
    }

    public static long swigRelease(tracker_list_alert tracker_list_alertVar) {
        if (tracker_list_alertVar == null) {
            return 0L;
        }
        if (!tracker_list_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tracker_list_alertVar.swigCPtr;
        tracker_list_alertVar.swigCMemOwn = false;
        tracker_list_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.tracker_list_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tracker_list_alert(j);
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

    public announce_entry_vector getTrackers() {
        long jTracker_list_alert_trackers_get = libtorrent_jni.tracker_list_alert_trackers_get(this.swigCPtr, this);
        if (jTracker_list_alert_trackers_get == 0) {
            return null;
        }
        return new announce_entry_vector(jTracker_list_alert_trackers_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.tracker_list_alert_message(this.swigCPtr, this);
    }

    public void setTrackers(announce_entry_vector announce_entry_vectorVar) {
        libtorrent_jni.tracker_list_alert_trackers_set(this.swigCPtr, this, announce_entry_vector.getCPtr(announce_entry_vectorVar), announce_entry_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.tracker_list_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.tracker_list_alert_what(this.swigCPtr, this);
    }
}
