package org.libtorrent4j.swig;

public class save_resume_data_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.save_resume_data_alert_priority_get());
    public static final int alert_type = libtorrent_jni.save_resume_data_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.save_resume_data_alert_static_category_get(), false);

    public save_resume_data_alert(long j, boolean z) {
        super(libtorrent_jni.save_resume_data_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(save_resume_data_alert save_resume_data_alertVar) {
        if (save_resume_data_alertVar == null) {
            return 0L;
        }
        return save_resume_data_alertVar.swigCPtr;
    }

    public static long swigRelease(save_resume_data_alert save_resume_data_alertVar) {
        if (save_resume_data_alertVar == null) {
            return 0L;
        }
        if (!save_resume_data_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = save_resume_data_alertVar.swigCPtr;
        save_resume_data_alertVar.swigCMemOwn = false;
        save_resume_data_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.save_resume_data_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_save_resume_data_alert(j);
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

    public add_torrent_params getParams() {
        long jSave_resume_data_alert_params_get = libtorrent_jni.save_resume_data_alert_params_get(this.swigCPtr, this);
        if (jSave_resume_data_alert_params_get == 0) {
            return null;
        }
        return new add_torrent_params(jSave_resume_data_alert_params_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.save_resume_data_alert_message(this.swigCPtr, this);
    }

    public void setParams(add_torrent_params add_torrent_paramsVar) {
        libtorrent_jni.save_resume_data_alert_params_set(this.swigCPtr, this, add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.save_resume_data_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.save_resume_data_alert_what(this.swigCPtr, this);
    }
}
