package org.libtorrent4j.swig;

public class read_piece_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.read_piece_alert_priority_get());
    public static final int alert_type = libtorrent_jni.read_piece_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.read_piece_alert_static_category_get(), false);

    public read_piece_alert(long j, boolean z) {
        super(libtorrent_jni.read_piece_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(read_piece_alert read_piece_alertVar) {
        if (read_piece_alertVar == null) {
            return 0L;
        }
        return read_piece_alertVar.swigCPtr;
    }

    public static long swigRelease(read_piece_alert read_piece_alertVar) {
        if (read_piece_alertVar == null) {
            return 0L;
        }
        if (!read_piece_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = read_piece_alertVar.swigCPtr;
        read_piece_alertVar.swigCMemOwn = false;
        read_piece_alertVar.delete();
        return j;
    }

    public long buffer_ptr() {
        return libtorrent_jni.read_piece_alert_buffer_ptr(this.swigCPtr, this);
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.read_piece_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_read_piece_alert(j);
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
        long j = libtorrent_jni.read_piece_alert_error_get(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new error_code(j, false);
    }

    public int getPiece() {
        return libtorrent_jni.read_piece_alert_piece_get(this.swigCPtr, this);
    }

    public int getSize() {
        return libtorrent_jni.read_piece_alert_size_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.read_piece_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.read_piece_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.read_piece_alert_what(this.swigCPtr, this);
    }
}
