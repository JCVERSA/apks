package org.libtorrent4j.swig;

public class piece_availability_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.piece_availability_alert_priority_get());
    public static final int alert_type = libtorrent_jni.piece_availability_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.piece_availability_alert_static_category_get(), false);

    public piece_availability_alert(long j, boolean z) {
        super(libtorrent_jni.piece_availability_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(piece_availability_alert piece_availability_alertVar) {
        if (piece_availability_alertVar == null) {
            return 0L;
        }
        return piece_availability_alertVar.swigCPtr;
    }

    public static long swigRelease(piece_availability_alert piece_availability_alertVar) {
        if (piece_availability_alertVar == null) {
            return 0L;
        }
        if (!piece_availability_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = piece_availability_alertVar.swigCPtr;
        piece_availability_alertVar.swigCMemOwn = false;
        piece_availability_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.piece_availability_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_piece_availability_alert(j);
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

    public int_vector getPiece_availability() {
        long jPiece_availability_alert_piece_availability_get = libtorrent_jni.piece_availability_alert_piece_availability_get(this.swigCPtr, this);
        if (jPiece_availability_alert_piece_availability_get == 0) {
            return null;
        }
        return new int_vector(jPiece_availability_alert_piece_availability_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.piece_availability_alert_message(this.swigCPtr, this);
    }

    public void setPiece_availability(int_vector int_vectorVar) {
        libtorrent_jni.piece_availability_alert_piece_availability_set(this.swigCPtr, this, int_vector.getCPtr(int_vectorVar), int_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.piece_availability_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.piece_availability_alert_what(this.swigCPtr, this);
    }
}
