package org.libtorrent4j.swig;

public class oversized_file_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.oversized_file_alert_priority_get());
    public static final int alert_type = libtorrent_jni.oversized_file_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.oversized_file_alert_static_category_get(), false);

    public oversized_file_alert(long j, boolean z) {
        super(libtorrent_jni.oversized_file_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(oversized_file_alert oversized_file_alertVar) {
        if (oversized_file_alertVar == null) {
            return 0L;
        }
        return oversized_file_alertVar.swigCPtr;
    }

    public static long swigRelease(oversized_file_alert oversized_file_alertVar) {
        if (oversized_file_alertVar == null) {
            return 0L;
        }
        if (!oversized_file_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = oversized_file_alertVar.swigCPtr;
        oversized_file_alertVar.swigCMemOwn = false;
        oversized_file_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.oversized_file_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_oversized_file_alert(j);
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
        return libtorrent_jni.oversized_file_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.oversized_file_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.oversized_file_alert_what(this.swigCPtr, this);
    }
}
