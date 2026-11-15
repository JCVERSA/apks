package org.libtorrent4j.swig;

public class torrent_conflict_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.torrent_conflict_alert_priority_get());
    public static final int alert_type = libtorrent_jni.torrent_conflict_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.torrent_conflict_alert_static_category_get(), false);

    public torrent_conflict_alert(long j, boolean z) {
        super(libtorrent_jni.torrent_conflict_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(torrent_conflict_alert torrent_conflict_alertVar) {
        if (torrent_conflict_alertVar == null) {
            return 0L;
        }
        return torrent_conflict_alertVar.swigCPtr;
    }

    public static long swigRelease(torrent_conflict_alert torrent_conflict_alertVar) {
        if (torrent_conflict_alertVar == null) {
            return 0L;
        }
        if (!torrent_conflict_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_conflict_alertVar.swigCPtr;
        torrent_conflict_alertVar.swigCMemOwn = false;
        torrent_conflict_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.torrent_conflict_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_conflict_alert(j);
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

    public torrent_handle getConflicting_torrent() {
        long j = libtorrent_jni.torrent_conflict_alert_conflicting_torrent_get(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new torrent_handle(j, false);
    }

    public torrent_info get_metadata() {
        return new torrent_info(libtorrent_jni.torrent_conflict_alert_get_metadata(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.torrent_conflict_alert_message(this.swigCPtr, this);
    }

    public void setConflicting_torrent(torrent_handle torrent_handleVar) {
        libtorrent_jni.torrent_conflict_alert_conflicting_torrent_set(this.swigCPtr, this, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.torrent_conflict_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.torrent_conflict_alert_what(this.swigCPtr, this);
    }
}
