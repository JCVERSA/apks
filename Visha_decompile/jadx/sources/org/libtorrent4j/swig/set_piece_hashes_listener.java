package org.libtorrent4j.swig;

public class set_piece_hashes_listener {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public set_piece_hashes_listener(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(set_piece_hashes_listener set_piece_hashes_listenerVar) {
        if (set_piece_hashes_listenerVar == null) {
            return 0L;
        }
        return set_piece_hashes_listenerVar.swigCPtr;
    }

    public static long swigRelease(set_piece_hashes_listener set_piece_hashes_listenerVar) {
        if (set_piece_hashes_listenerVar == null) {
            return 0L;
        }
        if (!set_piece_hashes_listenerVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = set_piece_hashes_listenerVar.swigCPtr;
        set_piece_hashes_listenerVar.swigCMemOwn = false;
        set_piece_hashes_listenerVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_set_piece_hashes_listener(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public void progress(int i) {
        if (getClass() == set_piece_hashes_listener.class) {
            libtorrent_jni.set_piece_hashes_listener_progress(this.swigCPtr, this, i);
        } else {
            libtorrent_jni.set_piece_hashes_listener_progressSwigExplicitset_piece_hashes_listener(this.swigCPtr, this, i);
        }
    }

    public void swigDirectorDisconnect() {
        this.swigCMemOwn = false;
        delete();
    }

    public void swigReleaseOwnership() {
        this.swigCMemOwn = false;
        libtorrent_jni.set_piece_hashes_listener_change_ownership(this, this.swigCPtr, false);
    }

    public void swigTakeOwnership() {
        this.swigCMemOwn = true;
        libtorrent_jni.set_piece_hashes_listener_change_ownership(this, this.swigCPtr, true);
    }

    public set_piece_hashes_listener() {
        this(libtorrent_jni.new_set_piece_hashes_listener(), true);
        libtorrent_jni.set_piece_hashes_listener_director_connect(this, this.swigCPtr, true, true);
    }
}
