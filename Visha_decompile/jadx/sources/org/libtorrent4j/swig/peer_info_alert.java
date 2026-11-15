package org.libtorrent4j.swig;

public class peer_info_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_info_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_info_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_info_alert_static_category_get(), false);

    public peer_info_alert(long j, boolean z) {
        super(libtorrent_jni.peer_info_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_info_alert peer_info_alertVar) {
        if (peer_info_alertVar == null) {
            return 0L;
        }
        return peer_info_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_info_alert peer_info_alertVar) {
        if (peer_info_alertVar == null) {
            return 0L;
        }
        if (!peer_info_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_info_alertVar.swigCPtr;
        peer_info_alertVar.swigCMemOwn = false;
        peer_info_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_info_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_info_alert(j);
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

    public peer_info_vector getPeer_info() {
        long jPeer_info_alert_peer_info_get = libtorrent_jni.peer_info_alert_peer_info_get(this.swigCPtr, this);
        if (jPeer_info_alert_peer_info_get == 0) {
            return null;
        }
        return new peer_info_vector(jPeer_info_alert_peer_info_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_info_alert_message(this.swigCPtr, this);
    }

    public void setPeer_info(peer_info_vector peer_info_vectorVar) {
        libtorrent_jni.peer_info_alert_peer_info_set(this.swigCPtr, this, peer_info_vector.getCPtr(peer_info_vectorVar), peer_info_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_info_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_info_alert_what(this.swigCPtr, this);
    }
}
