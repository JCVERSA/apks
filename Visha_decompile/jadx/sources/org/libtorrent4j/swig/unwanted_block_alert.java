package org.libtorrent4j.swig;

public class unwanted_block_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.unwanted_block_alert_priority_get());
    public static final int alert_type = libtorrent_jni.unwanted_block_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.unwanted_block_alert_static_category_get(), false);

    public unwanted_block_alert(long j, boolean z) {
        super(libtorrent_jni.unwanted_block_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(unwanted_block_alert unwanted_block_alertVar) {
        if (unwanted_block_alertVar == null) {
            return 0L;
        }
        return unwanted_block_alertVar.swigCPtr;
    }

    public static long swigRelease(unwanted_block_alert unwanted_block_alertVar) {
        if (unwanted_block_alertVar == null) {
            return 0L;
        }
        if (!unwanted_block_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = unwanted_block_alertVar.swigCPtr;
        unwanted_block_alertVar.swigCMemOwn = false;
        unwanted_block_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.unwanted_block_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_unwanted_block_alert(j);
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

    public int getBlock_index() {
        return libtorrent_jni.unwanted_block_alert_block_index_get(this.swigCPtr, this);
    }

    public int getPiece_index() {
        return libtorrent_jni.unwanted_block_alert_piece_index_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.unwanted_block_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.unwanted_block_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.unwanted_block_alert_what(this.swigCPtr, this);
    }
}
