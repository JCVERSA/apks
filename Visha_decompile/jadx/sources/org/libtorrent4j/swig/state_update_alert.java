package org.libtorrent4j.swig;

public class state_update_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.state_update_alert_priority_get());
    public static final int alert_type = libtorrent_jni.state_update_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.state_update_alert_static_category_get(), false);

    public state_update_alert(long j, boolean z) {
        super(libtorrent_jni.state_update_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(state_update_alert state_update_alertVar) {
        if (state_update_alertVar == null) {
            return 0L;
        }
        return state_update_alertVar.swigCPtr;
    }

    public static long swigRelease(state_update_alert state_update_alertVar) {
        if (state_update_alertVar == null) {
            return 0L;
        }
        if (!state_update_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = state_update_alertVar.swigCPtr;
        state_update_alertVar.swigCMemOwn = false;
        state_update_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.state_update_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_state_update_alert(j);
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

    public torrent_status_vector getStatus() {
        long jState_update_alert_status_get = libtorrent_jni.state_update_alert_status_get(this.swigCPtr, this);
        if (jState_update_alert_status_get == 0) {
            return null;
        }
        return new torrent_status_vector(jState_update_alert_status_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.state_update_alert_message(this.swigCPtr, this);
    }

    public void setStatus(torrent_status_vector torrent_status_vectorVar) {
        libtorrent_jni.state_update_alert_status_set(this.swigCPtr, this, torrent_status_vector.getCPtr(torrent_status_vectorVar), torrent_status_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.state_update_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.state_update_alert_what(this.swigCPtr, this);
    }
}
