package org.libtorrent4j.swig;

public class block_timeout_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.block_timeout_alert_priority_get());
    public static final int alert_type = libtorrent_jni.block_timeout_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.block_timeout_alert_static_category_get(), false);

    public block_timeout_alert(long j, boolean z) {
        super(libtorrent_jni.block_timeout_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(block_timeout_alert block_timeout_alertVar) {
        if (block_timeout_alertVar == null) {
            return 0L;
        }
        return block_timeout_alertVar.swigCPtr;
    }

    public static long swigRelease(block_timeout_alert block_timeout_alertVar) {
        if (block_timeout_alertVar == null) {
            return 0L;
        }
        if (!block_timeout_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = block_timeout_alertVar.swigCPtr;
        block_timeout_alertVar.swigCMemOwn = false;
        block_timeout_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.block_timeout_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_block_timeout_alert(j);
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
        return libtorrent_jni.block_timeout_alert_block_index_get(this.swigCPtr, this);
    }

    public int getPiece_index() {
        return libtorrent_jni.block_timeout_alert_piece_index_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.block_timeout_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.block_timeout_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.block_timeout_alert_what(this.swigCPtr, this);
    }
}
