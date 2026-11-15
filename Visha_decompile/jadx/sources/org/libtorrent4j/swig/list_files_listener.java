package org.libtorrent4j.swig;

public class list_files_listener {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public list_files_listener(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(list_files_listener list_files_listenerVar) {
        if (list_files_listenerVar == null) {
            return 0L;
        }
        return list_files_listenerVar.swigCPtr;
    }

    public static long swigRelease(list_files_listener list_files_listenerVar) {
        if (list_files_listenerVar == null) {
            return 0L;
        }
        if (!list_files_listenerVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = list_files_listenerVar.swigCPtr;
        list_files_listenerVar.swigCMemOwn = false;
        list_files_listenerVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_list_files_listener(j);
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

    public boolean pred(String str) {
        return getClass() == list_files_listener.class ? libtorrent_jni.list_files_listener_pred(this.swigCPtr, this, str) : libtorrent_jni.list_files_listener_predSwigExplicitlist_files_listener(this.swigCPtr, this, str);
    }

    public void swigDirectorDisconnect() {
        this.swigCMemOwn = false;
        delete();
    }

    public void swigReleaseOwnership() {
        this.swigCMemOwn = false;
        libtorrent_jni.list_files_listener_change_ownership(this, this.swigCPtr, false);
    }

    public void swigTakeOwnership() {
        this.swigCMemOwn = true;
        libtorrent_jni.list_files_listener_change_ownership(this, this.swigCPtr, true);
    }

    public list_files_listener() {
        this(libtorrent_jni.new_list_files_listener(), true);
        libtorrent_jni.list_files_listener_director_connect(this, this.swigCPtr, true, true);
    }
}
