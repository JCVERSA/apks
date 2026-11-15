package org.libtorrent4j.swig;

public class session_stats_alert extends alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.session_stats_alert_priority_get());
    public static final int alert_type = libtorrent_jni.session_stats_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.session_stats_alert_static_category_get(), false);

    public session_stats_alert(long j, boolean z) {
        super(libtorrent_jni.session_stats_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(session_stats_alert session_stats_alertVar) {
        if (session_stats_alertVar == null) {
            return 0L;
        }
        return session_stats_alertVar.swigCPtr;
    }

    public static long swigRelease(session_stats_alert session_stats_alertVar) {
        if (session_stats_alertVar == null) {
            return 0L;
        }
        if (!session_stats_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = session_stats_alertVar.swigCPtr;
        session_stats_alertVar.swigCMemOwn = false;
        session_stats_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.session_stats_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session_stats_alert(j);
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

    public long get_value(int i) {
        return libtorrent_jni.session_stats_alert_get_value(this.swigCPtr, this, i);
    }

    @Override
    public String message() {
        return libtorrent_jni.session_stats_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.session_stats_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.session_stats_alert_what(this.swigCPtr, this);
    }
}
