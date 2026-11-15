package org.libtorrent4j.swig;

public class peer_request {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public peer_request(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_request peer_requestVar) {
        if (peer_requestVar == null) {
            return 0L;
        }
        return peer_requestVar.swigCPtr;
    }

    public static long swigRelease(peer_request peer_requestVar) {
        if (peer_requestVar == null) {
            return 0L;
        }
        if (!peer_requestVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_requestVar.swigCPtr;
        peer_requestVar.swigCMemOwn = false;
        peer_requestVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_request(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(peer_request peer_requestVar) {
        return libtorrent_jni.peer_request_eq(this.swigCPtr, this, getCPtr(peer_requestVar), peer_requestVar);
    }

    public void finalize() {
        delete();
    }

    public int getLength() {
        return libtorrent_jni.peer_request_length_get(this.swigCPtr, this);
    }

    public int getPiece() {
        return libtorrent_jni.peer_request_piece_get(this.swigCPtr, this);
    }

    public int getStart() {
        return libtorrent_jni.peer_request_start_get(this.swigCPtr, this);
    }

    public void setLength(int i) {
        libtorrent_jni.peer_request_length_set(this.swigCPtr, this, i);
    }

    public void setPiece(int i) {
        libtorrent_jni.peer_request_piece_set(this.swigCPtr, this, i);
    }

    public void setStart(int i) {
        libtorrent_jni.peer_request_start_set(this.swigCPtr, this, i);
    }

    public peer_request() {
        this(libtorrent_jni.new_peer_request(), true);
    }
}
