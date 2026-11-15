package org.libtorrent4j.swig;

public class tracker_alert extends torrent_alert {
    private transient long swigCPtr;

    public tracker_alert(long j, boolean z) {
        super(libtorrent_jni.tracker_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(tracker_alert tracker_alertVar) {
        if (tracker_alertVar == null) {
            return 0L;
        }
        return tracker_alertVar.swigCPtr;
    }

    public static long swigRelease(tracker_alert tracker_alertVar) {
        if (tracker_alertVar == null) {
            return 0L;
        }
        if (!tracker_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tracker_alertVar.swigCPtr;
        tracker_alertVar.swigCMemOwn = false;
        tracker_alertVar.delete();
        return j;
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tracker_alert(j);
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

    public protocol_version getVersion() {
        return protocol_version.swigToEnum(libtorrent_jni.tracker_alert_version_get(this.swigCPtr, this));
    }

    public tcp_endpoint get_local_endpoint() {
        return new tcp_endpoint(libtorrent_jni.tracker_alert_get_local_endpoint(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.tracker_alert_message(this.swigCPtr, this);
    }

    public void setVersion(protocol_version protocol_versionVar) {
        libtorrent_jni.tracker_alert_version_set(this.swigCPtr, this, protocol_versionVar.swigValue());
    }

    public String tracker_url() {
        return libtorrent_jni.tracker_alert_tracker_url(this.swigCPtr, this);
    }
}
