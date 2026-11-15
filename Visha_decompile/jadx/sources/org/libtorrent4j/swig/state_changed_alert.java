package org.libtorrent4j.swig;

public class state_changed_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.state_changed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.state_changed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.state_changed_alert_static_category_get(), false);

    public state_changed_alert(long j, boolean z) {
        super(libtorrent_jni.state_changed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(state_changed_alert state_changed_alertVar) {
        if (state_changed_alertVar == null) {
            return 0L;
        }
        return state_changed_alertVar.swigCPtr;
    }

    public static long swigRelease(state_changed_alert state_changed_alertVar) {
        if (state_changed_alertVar == null) {
            return 0L;
        }
        if (!state_changed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = state_changed_alertVar.swigCPtr;
        state_changed_alertVar.swigCMemOwn = false;
        state_changed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.state_changed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_state_changed_alert(j);
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

    public torrent_status.state_t getPrev_state() {
        return torrent_status.state_t.swigToEnum(libtorrent_jni.state_changed_alert_prev_state_get(this.swigCPtr, this));
    }

    public torrent_status.state_t getState() {
        return torrent_status.state_t.swigToEnum(libtorrent_jni.state_changed_alert_state_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.state_changed_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.state_changed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.state_changed_alert_what(this.swigCPtr, this);
    }
}
