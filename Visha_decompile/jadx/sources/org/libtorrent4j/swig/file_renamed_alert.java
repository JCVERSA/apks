package org.libtorrent4j.swig;

public class file_renamed_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.file_renamed_alert_priority_get());
    public static final int alert_type = libtorrent_jni.file_renamed_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.file_renamed_alert_static_category_get(), false);

    public file_renamed_alert(long j, boolean z) {
        super(libtorrent_jni.file_renamed_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(file_renamed_alert file_renamed_alertVar) {
        if (file_renamed_alertVar == null) {
            return 0L;
        }
        return file_renamed_alertVar.swigCPtr;
    }

    public static long swigRelease(file_renamed_alert file_renamed_alertVar) {
        if (file_renamed_alertVar == null) {
            return 0L;
        }
        if (!file_renamed_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_renamed_alertVar.swigCPtr;
        file_renamed_alertVar.swigCMemOwn = false;
        file_renamed_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.file_renamed_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_renamed_alert(j);
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

    public int getIndex() {
        return libtorrent_jni.file_renamed_alert_index_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.file_renamed_alert_message(this.swigCPtr, this);
    }

    public String new_name() {
        return libtorrent_jni.file_renamed_alert_new_name(this.swigCPtr, this);
    }

    public String old_name() {
        return libtorrent_jni.file_renamed_alert_old_name(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.file_renamed_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.file_renamed_alert_what(this.swigCPtr, this);
    }
}
