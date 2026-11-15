package org.libtorrent4j.swig;

public class scrape_reply_alert extends tracker_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.scrape_reply_alert_priority_get());
    public static final int alert_type = libtorrent_jni.scrape_reply_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.scrape_reply_alert_static_category_get(), false);

    public scrape_reply_alert(long j, boolean z) {
        super(libtorrent_jni.scrape_reply_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(scrape_reply_alert scrape_reply_alertVar) {
        if (scrape_reply_alertVar == null) {
            return 0L;
        }
        return scrape_reply_alertVar.swigCPtr;
    }

    public static long swigRelease(scrape_reply_alert scrape_reply_alertVar) {
        if (scrape_reply_alertVar == null) {
            return 0L;
        }
        if (!scrape_reply_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = scrape_reply_alertVar.swigCPtr;
        scrape_reply_alertVar.swigCMemOwn = false;
        scrape_reply_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.scrape_reply_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_scrape_reply_alert(j);
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

    public int getComplete() {
        return libtorrent_jni.scrape_reply_alert_complete_get(this.swigCPtr, this);
    }

    public int getIncomplete() {
        return libtorrent_jni.scrape_reply_alert_incomplete_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.scrape_reply_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.scrape_reply_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.scrape_reply_alert_what(this.swigCPtr, this);
    }
}
