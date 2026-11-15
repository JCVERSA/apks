package org.libtorrent4j.swig;

public class torrent_alert extends alert {
    private transient long swigCPtr;

    public torrent_alert(long j, boolean z) {
        super(libtorrent_jni.torrent_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(torrent_alert torrent_alertVar) {
        if (torrent_alertVar == null) {
            return 0L;
        }
        return torrent_alertVar.swigCPtr;
    }

    public static long swigRelease(torrent_alert torrent_alertVar) {
        if (torrent_alertVar == null) {
            return 0L;
        }
        if (!torrent_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_alertVar.swigCPtr;
        torrent_alertVar.swigCMemOwn = false;
        torrent_alertVar.delete();
        return j;
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_alert(j);
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

    public torrent_handle getHandle() {
        long j = libtorrent_jni.torrent_alert_handle_get(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new torrent_handle(j, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.torrent_alert_message(this.swigCPtr, this);
    }

    public void setHandle(torrent_handle torrent_handleVar) {
        libtorrent_jni.torrent_alert_handle_set(this.swigCPtr, this, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar);
    }
}
