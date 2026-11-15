package org.libtorrent4j.swig;

public class storage_moved_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.storage_moved_alert_priority_get());
    public static final int alert_type = libtorrent_jni.storage_moved_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.storage_moved_alert_static_category_get(), false);

    public storage_moved_alert(long j, boolean z) {
        super(libtorrent_jni.storage_moved_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(storage_moved_alert storage_moved_alertVar) {
        if (storage_moved_alertVar == null) {
            return 0L;
        }
        return storage_moved_alertVar.swigCPtr;
    }

    public static long swigRelease(storage_moved_alert storage_moved_alertVar) {
        if (storage_moved_alertVar == null) {
            return 0L;
        }
        if (!storage_moved_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = storage_moved_alertVar.swigCPtr;
        storage_moved_alertVar.swigCMemOwn = false;
        storage_moved_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.storage_moved_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_storage_moved_alert(j);
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
        return libtorrent_jni.storage_moved_alert_message(this.swigCPtr, this);
    }

    public String old_path() {
        return libtorrent_jni.storage_moved_alert_old_path(this.swigCPtr, this);
    }

    public String storage_path() {
        return libtorrent_jni.storage_moved_alert_storage_path(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.storage_moved_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.storage_moved_alert_what(this.swigCPtr, this);
    }
}
