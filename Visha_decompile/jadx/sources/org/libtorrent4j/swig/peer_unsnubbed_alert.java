package org.libtorrent4j.swig;

public class peer_unsnubbed_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_unsnubbed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_unsnubbed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_unsnubbed_alert_static_category_get(), false);

    public peer_unsnubbed_alert(long j, boolean z) {
        super(libtorrent_jni.peer_unsnubbed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_unsnubbed_alert peer_unsnubbed_alertVar) {
        if (peer_unsnubbed_alertVar == null) {
            return 0L;
        }
        return peer_unsnubbed_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_unsnubbed_alert peer_unsnubbed_alertVar) {
        if (peer_unsnubbed_alertVar == null) {
            return 0L;
        }
        if (!peer_unsnubbed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_unsnubbed_alertVar.swigCPtr;
        peer_unsnubbed_alertVar.swigCMemOwn = false;
        peer_unsnubbed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_unsnubbed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_unsnubbed_alert(j);
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
        return libtorrent_jni.peer_unsnubbed_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_unsnubbed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_unsnubbed_alert_what(this.swigCPtr, this);
    }
}
