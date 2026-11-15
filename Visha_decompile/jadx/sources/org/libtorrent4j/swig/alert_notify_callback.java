package org.libtorrent4j.swig;

public class alert_notify_callback {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public alert_notify_callback(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(alert_notify_callback alert_notify_callbackVar) {
        if (alert_notify_callbackVar == null) {
            return 0L;
        }
        return alert_notify_callbackVar.swigCPtr;
    }

    public static long swigRelease(alert_notify_callback alert_notify_callbackVar) {
        if (alert_notify_callbackVar == null) {
            return 0L;
        }
        if (!alert_notify_callbackVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = alert_notify_callbackVar.swigCPtr;
        alert_notify_callbackVar.swigCMemOwn = false;
        alert_notify_callbackVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_alert_notify_callback(j);
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

    public void on_alert() {
        if (getClass() == alert_notify_callback.class) {
            libtorrent_jni.alert_notify_callback_on_alert(this.swigCPtr, this);
        } else {
            libtorrent_jni.alert_notify_callback_on_alertSwigExplicitalert_notify_callback(this.swigCPtr, this);
        }
    }

    public void swigDirectorDisconnect() {
        this.swigCMemOwn = false;
        delete();
    }

    public void swigReleaseOwnership() {
        this.swigCMemOwn = false;
        libtorrent_jni.alert_notify_callback_change_ownership(this, this.swigCPtr, false);
    }

    public void swigTakeOwnership() {
        this.swigCMemOwn = true;
        libtorrent_jni.alert_notify_callback_change_ownership(this, this.swigCPtr, true);
    }

    public alert_notify_callback() {
        this(libtorrent_jni.new_alert_notify_callback(), true);
        libtorrent_jni.alert_notify_callback_director_connect(this, this.swigCPtr, true, true);
    }
}
