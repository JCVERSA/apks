package org.libtorrent4j.swig;

public class file_rename_failed_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.file_rename_failed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.file_rename_failed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.file_rename_failed_alert_static_category_get(), false);

    public file_rename_failed_alert(long j, boolean z) {
        super(libtorrent_jni.file_rename_failed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(file_rename_failed_alert file_rename_failed_alertVar) {
        if (file_rename_failed_alertVar == null) {
            return 0L;
        }
        return file_rename_failed_alertVar.swigCPtr;
    }

    public static long swigRelease(file_rename_failed_alert file_rename_failed_alertVar) {
        if (file_rename_failed_alertVar == null) {
            return 0L;
        }
        if (!file_rename_failed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_rename_failed_alertVar.swigCPtr;
        file_rename_failed_alertVar.swigCMemOwn = false;
        file_rename_failed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.file_rename_failed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_rename_failed_alert(j);
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

    public error_code getError() {
        long jFile_rename_failed_alert_error_get = libtorrent_jni.file_rename_failed_alert_error_get(this.swigCPtr, this);
        if (jFile_rename_failed_alert_error_get == 0) {
            return null;
        }
        return new error_code(jFile_rename_failed_alert_error_get, false);
    }

    public int getIndex() {
        return libtorrent_jni.file_rename_failed_alert_index_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.file_rename_failed_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.file_rename_failed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.file_rename_failed_alert_what(this.swigCPtr, this);
    }
}
