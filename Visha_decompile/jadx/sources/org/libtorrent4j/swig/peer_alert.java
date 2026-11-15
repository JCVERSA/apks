package org.libtorrent4j.swig;

public class peer_alert extends torrent_alert {
    private transient long swigCPtr;

    public peer_alert(long j, boolean z) {
        super(libtorrent_jni.peer_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_alert peer_alertVar) {
        if (peer_alertVar == null) {
            return 0L;
        }
        return peer_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_alert peer_alertVar) {
        if (peer_alertVar == null) {
            return 0L;
        }
        if (!peer_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_alertVar.swigCPtr;
        peer_alertVar.swigCMemOwn = false;
        peer_alertVar.delete();
        return j;
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_alert(j);
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

    public sha1_hash getPid() {
        long jPeer_alert_pid_get = libtorrent_jni.peer_alert_pid_get(this.swigCPtr, this);
        if (jPeer_alert_pid_get == 0) {
            return null;
        }
        return new sha1_hash(jPeer_alert_pid_get, false);
    }

    public tcp_endpoint get_endpoint() {
        return new tcp_endpoint(libtorrent_jni.peer_alert_get_endpoint(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_alert_message(this.swigCPtr, this);
    }

    public void setPid(sha1_hash sha1_hashVar) {
        libtorrent_jni.peer_alert_pid_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }
}
