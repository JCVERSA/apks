package org.libtorrent4j.swig;

public class torrent_removed_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.torrent_removed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.torrent_removed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.torrent_removed_alert_static_category_get(), false);

    public torrent_removed_alert(long j, boolean z) {
        super(libtorrent_jni.torrent_removed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(torrent_removed_alert torrent_removed_alertVar) {
        if (torrent_removed_alertVar == null) {
            return 0L;
        }
        return torrent_removed_alertVar.swigCPtr;
    }

    public static long swigRelease(torrent_removed_alert torrent_removed_alertVar) {
        if (torrent_removed_alertVar == null) {
            return 0L;
        }
        if (!torrent_removed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_removed_alertVar.swigCPtr;
        torrent_removed_alertVar.swigCMemOwn = false;
        torrent_removed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.torrent_removed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_removed_alert(j);
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

    public info_hash_t getInfo_hashes() {
        long j = libtorrent_jni.torrent_removed_alert_info_hashes_get(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new info_hash_t(j, false);
    }

    public client_data_t getUserdata() {
        long j = libtorrent_jni.torrent_removed_alert_userdata_get(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new client_data_t(j, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.torrent_removed_alert_message(this.swigCPtr, this);
    }

    public void setInfo_hashes(info_hash_t info_hash_tVar) {
        libtorrent_jni.torrent_removed_alert_info_hashes_set(this.swigCPtr, this, info_hash_t.getCPtr(info_hash_tVar), info_hash_tVar);
    }

    public void setUserdata(client_data_t client_data_tVar) {
        libtorrent_jni.torrent_removed_alert_userdata_set(this.swigCPtr, this, client_data_t.getCPtr(client_data_tVar), client_data_tVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.torrent_removed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.torrent_removed_alert_what(this.swigCPtr, this);
    }
}
